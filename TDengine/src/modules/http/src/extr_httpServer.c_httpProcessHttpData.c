
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {TYPE_4__* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
typedef int sigset_t ;
struct TYPE_19__ {scalar_t__ fd; int accessTimes; int state; int ipstr; TYPE_3__* pThread; struct TYPE_19__* signature; } ;
struct TYPE_18__ {int numOfFds; TYPE_2__* pServer; int (* processData ) (TYPE_4__*) ;int pollFd; int threadMutex; int fdReady; } ;
struct TYPE_17__ {int requestNum; int online; } ;
typedef TYPE_3__ HttpThread ;
typedef TYPE_4__ HttpContext ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLPRI ;
 int EPOLLRDHUP ;
 int HTTP_CONTEXT_STATE_READY ;
 int HTTP_MAX_EVENTS ;
 int HTTP_SERVER_OFFLINE ;
 int SIGPIPE ;
 int SIG_SETMASK ;
 int atomic_fetch_add_32 (int *,int) ;
 int epoll_wait (int ,struct epoll_event*,int,int) ;
 int httpAlterContextState (TYPE_4__*,int ,int ) ;
 int httpCloseContextByServer (TYPE_3__*,TYPE_4__*) ;
 int httpContextStateStr (int ) ;
 scalar_t__ httpReadData (TYPE_3__*,TYPE_4__*) ;
 int httpReadDirtyData (TYPE_4__*) ;
 int httpRemoveContextFromEpoll (TYPE_3__*,TYPE_4__*) ;
 int httpSendErrorResp (TYPE_4__*,int ) ;
 int httpTrace (char*,TYPE_4__*,scalar_t__,int ,int ,...) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int stub1 (TYPE_4__*) ;

void httpProcessHttpData(void *param) {
  HttpThread *pThread = (HttpThread *)param;
  HttpContext *pContext;
  int fdNum;

  sigset_t set;
  sigemptyset(&set);
  sigaddset(&set, SIGPIPE);
  pthread_sigmask(SIG_SETMASK, &set, ((void*)0));

  while (1) {
    pthread_mutex_lock(&pThread->threadMutex);
    if (pThread->numOfFds < 1) {
      pthread_cond_wait(&pThread->fdReady, &pThread->threadMutex);
    }
    pthread_mutex_unlock(&pThread->threadMutex);

    struct epoll_event events[HTTP_MAX_EVENTS];

    fdNum = epoll_wait(pThread->pollFd, events, HTTP_MAX_EVENTS, 1);
    if (fdNum <= 0) continue;

    for (int i = 0; i < fdNum; ++i) {
      pContext = events[i].data.ptr;
      if (pContext->signature != pContext || pContext->pThread != pThread || pContext->fd <= 0) {
        continue;
      }

      if (events[i].events & EPOLLPRI) {
        httpTrace("context:%p, fd:%d, ip:%s, state:%s, EPOLLPRI events occured, accessed:%d, close connect",
                  pContext, pContext->fd, pContext->ipstr, httpContextStateStr(pContext->state), pContext->accessTimes);
        httpRemoveContextFromEpoll(pThread, pContext);
        httpCloseContextByServer(pThread, pContext);
        continue;
      }

      if (events[i].events & EPOLLRDHUP) {
        httpTrace("context:%p, fd:%d, ip:%s, state:%s, EPOLLRDHUP events occured, accessed:%d, close connect",
                  pContext, pContext->fd, pContext->ipstr, httpContextStateStr(pContext->state), pContext->accessTimes);
        httpRemoveContextFromEpoll(pThread, pContext);
        httpCloseContextByServer(pThread, pContext);
        continue;
      }

      if (events[i].events & EPOLLERR) {
        httpTrace("context:%p, fd:%d, ip:%s, state:%s, EPOLLERR events occured, accessed:%d, close connect",
                  pContext, pContext->fd, pContext->ipstr, httpContextStateStr(pContext->state), pContext->accessTimes);
        httpRemoveContextFromEpoll(pThread, pContext);
        httpCloseContextByServer(pThread, pContext);
        continue;
      }

      if (events[i].events & EPOLLHUP) {
        httpTrace("context:%p, fd:%d, ip:%s, state:%s, EPOLLHUP events occured, accessed:%d, close connect",
                  pContext, pContext->fd, pContext->ipstr, httpContextStateStr(pContext->state), pContext->accessTimes);
        httpRemoveContextFromEpoll(pThread, pContext);
        httpCloseContextByServer(pThread, pContext);
        continue;
      }

      if (!httpAlterContextState(pContext, HTTP_CONTEXT_STATE_READY, HTTP_CONTEXT_STATE_READY)) {
        httpTrace("context:%p, fd:%d, ip:%s, state:%s, not in ready state, ignore read events",
                pContext, pContext->fd, pContext->ipstr, httpContextStateStr(pContext->state));
        continue;
      }

      if (!pContext->pThread->pServer->online) {
        httpTrace("context:%p, fd:%d, ip:%s, state:%s, server is not online, accessed:%d, close connect",
                  pContext, pContext->fd, pContext->ipstr, httpContextStateStr(pContext->state), pContext->accessTimes);
        httpRemoveContextFromEpoll(pThread, pContext);
        httpReadDirtyData(pContext);
        httpSendErrorResp(pContext, HTTP_SERVER_OFFLINE);
        httpCloseContextByServer(pThread, pContext);
        continue;
      } else {
        if (httpReadData(pThread, pContext)) {
          (*(pThread->processData))(pContext);
          atomic_fetch_add_32(&pThread->pServer->requestNum, 1);
        }
      }
    }
  }
}

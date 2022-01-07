
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* session; int user; int ipstr; int fd; TYPE_1__* pThread; } ;
struct TYPE_11__ {int serverMutex; int pSessionHash; scalar_t__ sessionExpire; } ;
struct TYPE_10__ {int access; void* taos; int id; struct TYPE_10__* signature; scalar_t__ expire; } ;
struct TYPE_9__ {TYPE_3__* pServer; } ;
typedef TYPE_2__ HttpSession ;
typedef TYPE_3__ HttpServer ;
typedef TYPE_4__ HttpContext ;


 size_t HTTP_SESSION_FULL ;
 int httpError (char*,TYPE_4__*,int ,int ,int ,int ) ;
 int * httpMsg ;
 int httpTrace (char*,TYPE_4__*,int ,int ,int ,TYPE_2__*,int ,void*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strcpy (int ,int ) ;
 scalar_t__ taosAddStrHash (int ,int ,char*) ;
 scalar_t__ taosGetTimestampSec () ;
 int taos_close (void*) ;

void httpCreateSession(HttpContext *pContext, void *taos) {
  HttpServer *server = pContext->pThread->pServer;
  pthread_mutex_lock(&server->serverMutex);

  if (pContext->session != ((void*)0) && pContext->session == pContext->session->signature) {
    httpTrace("context:%p, fd:%d, ip:%s, user:%s, set exist session:%p:%s:%p expired", pContext, pContext->fd,
              pContext->ipstr, pContext->user, pContext->session, pContext->session->id, pContext->session->taos);
    pContext->session->expire = 0;
    pContext->session->access--;
  }

  HttpSession session;
  session.taos = taos;
  session.expire = (int)taosGetTimestampSec() + server->sessionExpire;
  session.access = 1;
  strcpy(session.id, pContext->user);
  pContext->session = (HttpSession *)taosAddStrHash(server->pSessionHash, session.id, (char *)(&session));
  if (pContext->session == ((void*)0)) {
    httpError("context:%p, fd:%d, ip:%s, user:%s, error:%s", pContext, pContext->fd, pContext->ipstr, pContext->user,
              httpMsg[HTTP_SESSION_FULL]);
    taos_close(taos);
    pthread_mutex_unlock(&server->serverMutex);
    return;
  }

  pContext->session->signature = pContext->session;
  httpTrace("context:%p, fd:%d, ip:%s, user:%s, create a new session:%p:%s:%p", pContext, pContext->fd, pContext->ipstr,
            pContext->user, pContext->session, pContext->session->id, pContext->session->taos);
  pthread_mutex_unlock(&server->serverMutex);
}

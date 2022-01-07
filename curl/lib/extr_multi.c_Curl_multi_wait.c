
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {unsigned int events; unsigned int revents; scalar_t__ fd; } ;
struct curl_waitfd {int events; unsigned short revents; scalar_t__ fd; } ;
struct Curl_multi {struct Curl_easy* easyp; scalar_t__ in_callback; } ;
struct Curl_easy {struct Curl_easy* next; } ;
typedef scalar_t__ curl_socket_t ;
typedef int CURLMcode ;


 int CURLM_BAD_HANDLE ;
 int CURLM_OK ;
 int CURLM_OUT_OF_MEMORY ;
 int CURLM_RECURSIVE_API_CALL ;
 scalar_t__ CURL_SOCKET_BAD ;
 int CURL_WAIT_POLLIN ;
 int CURL_WAIT_POLLOUT ;
 int CURL_WAIT_POLLPRI ;
 int Curl_poll (struct pollfd*,unsigned int,int) ;
 int Curl_wait_ms (int) ;
 int FALSE ;
 int GETSOCK_READSOCK (unsigned int) ;
 int GETSOCK_WRITESOCK (unsigned int) ;
 int GOOD_MULTI_HANDLE (struct Curl_multi*) ;
 int MAX_SOCKSPEREASYHANDLE ;
 int NUM_POLLS_ON_STACK ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLPRI ;
 int TRUE ;
 int curl_multi_timeout (struct Curl_multi*,long*) ;
 int free (struct pollfd*) ;
 struct pollfd* malloc (unsigned int) ;
 int multi_getsock (struct Curl_easy*,scalar_t__*) ;
 int multi_timeout (struct Curl_multi*,long*) ;

__attribute__((used)) static CURLMcode Curl_multi_wait(struct Curl_multi *multi,
                                 struct curl_waitfd extra_fds[],
                                 unsigned int extra_nfds,
                                 int timeout_ms,
                                 int *ret,
                                 bool extrawait)
{
  struct Curl_easy *data;
  curl_socket_t sockbunch[MAX_SOCKSPEREASYHANDLE];
  int bitmap;
  unsigned int i;
  unsigned int nfds = 0;
  unsigned int curlfds;
  bool ufds_malloc = FALSE;
  long timeout_internal;
  int retcode = 0;
  struct pollfd a_few_on_stack[NUM_POLLS_ON_STACK];
  struct pollfd *ufds = &a_few_on_stack[0];

  if(!GOOD_MULTI_HANDLE(multi))
    return CURLM_BAD_HANDLE;

  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;


  data = multi->easyp;
  while(data) {
    bitmap = multi_getsock(data, sockbunch);

    for(i = 0; i< MAX_SOCKSPEREASYHANDLE; i++) {
      curl_socket_t s = CURL_SOCKET_BAD;

      if(bitmap & GETSOCK_READSOCK(i)) {
        ++nfds;
        s = sockbunch[i];
      }
      if(bitmap & GETSOCK_WRITESOCK(i)) {
        ++nfds;
        s = sockbunch[i];
      }
      if(s == CURL_SOCKET_BAD) {
        break;
      }
    }

    data = data->next;
  }




  (void)multi_timeout(multi, &timeout_internal);
  if((timeout_internal >= 0) && (timeout_internal < (long)timeout_ms))
    timeout_ms = (int)timeout_internal;

  curlfds = nfds;
  nfds += extra_nfds;

  if(nfds > NUM_POLLS_ON_STACK) {




    ufds = malloc(nfds * sizeof(struct pollfd));
    if(!ufds)
      return CURLM_OUT_OF_MEMORY;
    ufds_malloc = TRUE;
  }
  nfds = 0;




  if(curlfds) {

    data = multi->easyp;
    while(data) {
      bitmap = multi_getsock(data, sockbunch);

      for(i = 0; i< MAX_SOCKSPEREASYHANDLE; i++) {
        curl_socket_t s = CURL_SOCKET_BAD;

        if(bitmap & GETSOCK_READSOCK(i)) {
          ufds[nfds].fd = sockbunch[i];
          ufds[nfds].events = POLLIN;
          ++nfds;
          s = sockbunch[i];
        }
        if(bitmap & GETSOCK_WRITESOCK(i)) {
          ufds[nfds].fd = sockbunch[i];
          ufds[nfds].events = POLLOUT;
          ++nfds;
          s = sockbunch[i];
        }
        if(s == CURL_SOCKET_BAD) {
          break;
        }
      }

      data = data->next;
    }
  }


  for(i = 0; i < extra_nfds; i++) {
    ufds[nfds].fd = extra_fds[i].fd;
    ufds[nfds].events = 0;
    if(extra_fds[i].events & CURL_WAIT_POLLIN)
      ufds[nfds].events |= POLLIN;
    if(extra_fds[i].events & CURL_WAIT_POLLPRI)
      ufds[nfds].events |= POLLPRI;
    if(extra_fds[i].events & CURL_WAIT_POLLOUT)
      ufds[nfds].events |= POLLOUT;
    ++nfds;
  }

  if(nfds) {
    int pollrc;

    pollrc = Curl_poll(ufds, nfds, timeout_ms);

    if(pollrc > 0) {
      retcode = pollrc;



      for(i = 0; i < extra_nfds; i++) {
        unsigned short mask = 0;
        unsigned r = ufds[curlfds + i].revents;

        if(r & POLLIN)
          mask |= CURL_WAIT_POLLIN;
        if(r & POLLOUT)
          mask |= CURL_WAIT_POLLOUT;
        if(r & POLLPRI)
          mask |= CURL_WAIT_POLLPRI;

        extra_fds[i].revents = mask;
      }
    }
  }

  if(ufds_malloc)
    free(ufds);
  if(ret)
    *ret = retcode;
  if(!extrawait || extra_fds || curlfds)

    ;
  else {
    long sleep_ms = 0;


    if(!curl_multi_timeout(multi, &sleep_ms) && sleep_ms) {
      if(sleep_ms > timeout_ms)
        sleep_ms = timeout_ms;
      Curl_wait_ms((int)sleep_ms);
    }
  }

  return CURLM_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_multi {struct Curl_easy* easyp; scalar_t__ in_callback; } ;
struct Curl_easy {struct Curl_easy* next; } ;
typedef int fd_set ;
typedef scalar_t__ curl_socket_t ;
typedef int CURLMcode ;


 int CURLM_BAD_HANDLE ;
 int CURLM_OK ;
 int CURLM_RECURSIVE_API_CALL ;
 scalar_t__ CURL_SOCKET_BAD ;
 int FD_SET (scalar_t__,int *) ;
 int GETSOCK_READSOCK (int) ;
 int GETSOCK_WRITESOCK (int) ;
 int GOOD_MULTI_HANDLE (struct Curl_multi*) ;
 int MAX_SOCKSPEREASYHANDLE ;
 scalar_t__ VALID_SOCK (scalar_t__) ;
 int multi_getsock (struct Curl_easy*,scalar_t__*) ;

CURLMcode curl_multi_fdset(struct Curl_multi *multi,
                           fd_set *read_fd_set, fd_set *write_fd_set,
                           fd_set *exc_fd_set, int *max_fd)
{



  struct Curl_easy *data;
  int this_max_fd = -1;
  curl_socket_t sockbunch[MAX_SOCKSPEREASYHANDLE];
  int i;
  (void)exc_fd_set;

  if(!GOOD_MULTI_HANDLE(multi))
    return CURLM_BAD_HANDLE;

  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;

  data = multi->easyp;
  while(data) {
    int bitmap = multi_getsock(data, sockbunch);

    for(i = 0; i< MAX_SOCKSPEREASYHANDLE; i++) {
      curl_socket_t s = CURL_SOCKET_BAD;

      if((bitmap & GETSOCK_READSOCK(i)) && VALID_SOCK((sockbunch[i]))) {
        FD_SET(sockbunch[i], read_fd_set);
        s = sockbunch[i];
      }
      if((bitmap & GETSOCK_WRITESOCK(i)) && VALID_SOCK((sockbunch[i]))) {
        FD_SET(sockbunch[i], write_fd_set);
        s = sockbunch[i];
      }
      if(s == CURL_SOCKET_BAD)

        break;
      if((int)s > this_max_fd)
        this_max_fd = (int)s;
    }

    data = data->next;
  }

  *max_fd = this_max_fd;

  return CURLM_OK;
}

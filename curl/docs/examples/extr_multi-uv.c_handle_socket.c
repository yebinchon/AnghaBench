
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int curl_socket_t ;
struct TYPE_4__ {int poll_handle; } ;
typedef TYPE_1__ curl_context_t ;
typedef int CURL ;






 int UV_READABLE ;
 int UV_WRITABLE ;
 int abort () ;
 TYPE_1__* create_curl_context (int ) ;
 int curl_handle ;
 int curl_multi_assign (int ,int ,void*) ;
 int curl_perform ;
 int destroy_curl_context (TYPE_1__*) ;
 int uv_poll_start (int *,int,int ) ;
 int uv_poll_stop (int *) ;

__attribute__((used)) static int handle_socket(CURL *easy, curl_socket_t s, int action, void *userp,
                  void *socketp)
{
  curl_context_t *curl_context;
  int events = 0;

  switch(action) {
  case 131:
  case 129:
  case 130:
    curl_context = socketp ?
      (curl_context_t *) socketp : create_curl_context(s);

    curl_multi_assign(curl_handle, s, (void *) curl_context);

    if(action != 131)
      events |= UV_WRITABLE;
    if(action != 129)
      events |= UV_READABLE;

    uv_poll_start(&curl_context->poll_handle, events, curl_perform);
    break;
  case 128:
    if(socketp) {
      uv_poll_stop(&((curl_context_t*)socketp)->poll_handle);
      destroy_curl_context((curl_context_t*) socketp);
      curl_multi_assign(curl_handle, s, ((void*)0));
    }
    break;
  default:
    abort();
  }

  return 0;
}

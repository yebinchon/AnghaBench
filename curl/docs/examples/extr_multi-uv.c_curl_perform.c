
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ uv_poll_t ;
struct TYPE_5__ {int sockfd; } ;
typedef TYPE_2__ curl_context_t ;


 int CURL_CSELECT_IN ;
 int CURL_CSELECT_OUT ;
 int UV_READABLE ;
 int UV_WRITABLE ;
 int check_multi_info () ;
 int curl_handle ;
 int curl_multi_socket_action (int ,int ,int,int*) ;

__attribute__((used)) static void curl_perform(uv_poll_t *req, int status, int events)
{
  int running_handles;
  int flags = 0;
  curl_context_t *context;

  if(events & UV_READABLE)
    flags |= CURL_CSELECT_IN;
  if(events & UV_WRITABLE)
    flags |= CURL_CSELECT_OUT;

  context = (curl_context_t *) req->data;

  curl_multi_socket_action(curl_handle, context->sockfd, flags,
                           &running_handles);

  check_multi_info();
}

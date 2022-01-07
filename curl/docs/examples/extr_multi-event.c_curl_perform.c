
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sockfd; } ;
typedef TYPE_1__ curl_context_t ;


 int CURL_CSELECT_IN ;
 int CURL_CSELECT_OUT ;
 short EV_READ ;
 short EV_WRITE ;
 int check_multi_info () ;
 int curl_handle ;
 int curl_multi_socket_action (int ,int ,int,int*) ;

__attribute__((used)) static void curl_perform(int fd, short event, void *arg)
{
  int running_handles;
  int flags = 0;
  curl_context_t *context;

  if(event & EV_READ)
    flags |= CURL_CSELECT_IN;
  if(event & EV_WRITE)
    flags |= CURL_CSELECT_OUT;

  context = (curl_context_t *) arg;

  curl_multi_socket_action(curl_handle, context->sockfd, flags,
                           &running_handles);

  check_multi_info();
}

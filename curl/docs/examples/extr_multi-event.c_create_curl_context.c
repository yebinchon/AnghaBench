
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int curl_socket_t ;
struct TYPE_4__ {int event; int sockfd; } ;
typedef TYPE_1__ curl_context_t ;


 int base ;
 int curl_perform ;
 int event_new (int ,int ,int ,int ,TYPE_1__*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static curl_context_t* create_curl_context(curl_socket_t sockfd)
{
  curl_context_t *context;

  context = (curl_context_t *) malloc(sizeof(*context));

  context->sockfd = sockfd;

  context->event = event_new(base, sockfd, 0, curl_perform, context);

  return context;
}

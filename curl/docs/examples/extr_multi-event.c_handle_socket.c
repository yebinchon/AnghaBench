
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int curl_socket_t ;
struct TYPE_5__ {int event; int sockfd; } ;
typedef TYPE_1__ curl_context_t ;
typedef int CURL ;






 int EV_PERSIST ;
 int EV_READ ;
 int EV_WRITE ;
 int abort () ;
 int base ;
 TYPE_1__* create_curl_context (int ) ;
 int curl_handle ;
 int curl_multi_assign (int ,int ,void*) ;
 int curl_perform ;
 int destroy_curl_context (TYPE_1__*) ;
 int event_add (int ,int *) ;
 int event_assign (int ,int ,int ,int,int ,TYPE_1__*) ;
 int event_del (int ) ;

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
      events |= EV_WRITE;
    if(action != 129)
      events |= EV_READ;

    events |= EV_PERSIST;

    event_del(curl_context->event);
    event_assign(curl_context->event, base, curl_context->sockfd, events,
      curl_perform, curl_context);
    event_add(curl_context->event, ((void*)0));

    break;
  case 128:
    if(socketp) {
      event_del(((curl_context_t*) socketp)->event);
      destroy_curl_context((curl_context_t*) socketp);
      curl_multi_assign(curl_handle, s, ((void*)0));
    }
    break;
  default:
    abort();
  }

  return 0;
}

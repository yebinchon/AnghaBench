
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
typedef TYPE_1__ curl_context_t ;


 int event_del (int ) ;
 int event_free (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void destroy_curl_context(curl_context_t *context)
{
  event_del(context->event);
  event_free(context->event);
  free(context);
}

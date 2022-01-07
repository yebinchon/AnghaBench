
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer_expired; int wait_event; } ;
typedef TYPE_1__ ILCS_SERVICE_T ;


 int vcos_assert (int) ;
 int vcos_event_signal (int *) ;

__attribute__((used)) static void ilcs_timer(void *param)
{
   ILCS_SERVICE_T *st = (ILCS_SERVICE_T *) param;

   vcos_assert(st->timer_expired == 0);
   st->timer_expired = 1;
   vcos_event_signal(&st->wait_event);
}

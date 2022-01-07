
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event_sema; } ;
typedef TYPE_1__ ILCLIENT_T ;


 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void ilclient_unlock_events(ILCLIENT_T *st)
{
   vcos_semaphore_post(&st->event_sema);
}

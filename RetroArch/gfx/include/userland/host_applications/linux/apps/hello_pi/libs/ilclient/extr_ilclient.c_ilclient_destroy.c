
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event_sema; } ;
typedef TYPE_1__ ILCLIENT_T ;


 int VCOS_LOG_CATEGORY ;
 int vcos_free (TYPE_1__*) ;
 int vcos_log_unregister (int ) ;
 int vcos_semaphore_delete (int *) ;

void ilclient_destroy(ILCLIENT_T *st)
{
   vcos_semaphore_delete(&st->event_sema);
   vcos_free(st);
   vcos_log_unregister(VCOS_LOG_CATEGORY);
}

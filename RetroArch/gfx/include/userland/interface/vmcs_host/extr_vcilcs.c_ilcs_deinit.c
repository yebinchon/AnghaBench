
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int thread; int kill_service; } ;
typedef TYPE_1__ ILCS_SERVICE_T ;


 int DEINIT_CALLED ;
 int ilcs_send_quit (TYPE_1__*) ;
 int vcos_free (TYPE_1__*) ;
 int vcos_thread_join (int *,void**) ;

void ilcs_deinit(ILCS_SERVICE_T *st)
{
   void *data;
   st->kill_service = DEINIT_CALLED;
   ilcs_send_quit(st);
   vcos_thread_join(&st->thread, &data);
   vcos_free(st);
}

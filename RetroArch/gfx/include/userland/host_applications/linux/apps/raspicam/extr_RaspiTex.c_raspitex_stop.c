
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int preview_stop; int preview_thread; } ;
typedef TYPE_1__ RASPITEX_STATE ;


 int vcos_log_trace (char*) ;
 int vcos_thread_join (int *,int *) ;

void raspitex_stop(RASPITEX_STATE *state)
{
   if (! state->preview_stop)
   {
      vcos_log_trace("Stopping GL preview");
      state->preview_stop = 1;
      vcos_thread_join(&state->preview_thread, ((void*)0));
   }
}

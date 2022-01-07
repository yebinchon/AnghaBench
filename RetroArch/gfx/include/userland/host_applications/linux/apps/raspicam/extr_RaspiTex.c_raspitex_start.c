
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_4__ {int preview_thread; } ;
typedef TYPE_1__ RASPITEX_STATE ;


 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int preview_worker ;
 int vcos_log_error (char*,int ,scalar_t__) ;
 int vcos_log_trace (char*,int ) ;
 scalar_t__ vcos_thread_create (int *,char*,int *,int ,TYPE_1__*) ;

int raspitex_start(RASPITEX_STATE *state)
{
   VCOS_STATUS_T status;

   vcos_log_trace("%s", VCOS_FUNCTION);
   status = vcos_thread_create(&state->preview_thread, "preview-worker",
                               ((void*)0), preview_worker, state);

   if (status != VCOS_SUCCESS)
      vcos_log_error("%s: Failed to start worker thread %d",
                     VCOS_FUNCTION, status);

   return (status == VCOS_SUCCESS ? 0 : -1);
}

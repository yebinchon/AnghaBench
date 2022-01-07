
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int preview_stop; int preview_queue; } ;
typedef TYPE_1__ RASPITEX_STATE ;
typedef int MMAL_BUFFER_HEADER_T ;


 int VCOS_FUNCTION ;
 int * mmal_queue_get (int ) ;
 int raspitex_draw (TYPE_1__*,int *) ;
 int vcos_log_error (char*,int ) ;

__attribute__((used)) static int preview_process_returned_bufs(RASPITEX_STATE* state)
{
   MMAL_BUFFER_HEADER_T *buf;
   int new_frame = 0;
   int rc = 0;

   while ((buf = mmal_queue_get(state->preview_queue)) != ((void*)0))
   {
      if (state->preview_stop == 0)
      {
         new_frame = 1;
         rc = raspitex_draw(state, buf);
         if (rc != 0)
         {
            vcos_log_error("%s: Error drawing frame. Stopping.", VCOS_FUNCTION);
            state->preview_stop = 1;
            return rc;
         }
      }
   }





   if (! new_frame)
      rc = raspitex_draw(state, ((void*)0));
   return rc;
}

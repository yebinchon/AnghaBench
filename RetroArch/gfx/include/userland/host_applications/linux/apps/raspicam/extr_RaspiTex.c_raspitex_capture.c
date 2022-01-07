
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int request; size_t size; int start_sem; int * buffer; int completed_sem; } ;
struct TYPE_6__ {int height; int width; TYPE_1__ capture; } ;
typedef TYPE_2__ RASPITEX_STATE ;
typedef int FILE ;


 int VCOS_FUNCTION ;
 int fflush (int *) ;
 int free (int *) ;
 int raspitexutil_brga_to_rgba (int *,size_t) ;
 int vcos_log_error (char*,int ) ;
 int vcos_log_trace (char*,int ,TYPE_2__*,int *) ;
 int vcos_semaphore_post (int *) ;
 int vcos_semaphore_wait (int *) ;
 int write_tga (int *,int ,int ,int *,size_t) ;

int raspitex_capture(RASPITEX_STATE *state, FILE *output_file)
{
   int rc = 0;
   uint8_t *buffer = ((void*)0);
   size_t size = 0;

   vcos_log_trace("%s: state %p file %p", VCOS_FUNCTION,
                  state, output_file);

   if (state && output_file)
   {

      vcos_semaphore_wait(&state->capture.start_sem);
      state->capture.request = 1;


      vcos_semaphore_wait(&state->capture.completed_sem);


      buffer = state->capture.buffer;
      size = state->capture.size;

      state->capture.request = 0;
      state->capture.buffer = 0;
      state->capture.size = 0;


      vcos_semaphore_post(&state->capture.start_sem);
   }
   if (size == 0 || ! buffer)
   {
      vcos_log_error("%s: capture failed", VCOS_FUNCTION);
      rc = -1;
      goto end;
   }

   raspitexutil_brga_to_rgba(buffer, size);
   rc = write_tga(output_file, state->width, state->height, buffer, size);
   fflush(output_file);

end:
   free(buffer);
   return rc;
}

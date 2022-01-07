
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int n_buffers; scalar_t__ fd; int scaler; struct TYPE_5__* buffer_output; TYPE_1__* buffers; } ;
typedef TYPE_2__ video4linux_t ;
struct TYPE_4__ {int length; int start; } ;


 int RARCH_ERR (char*) ;
 int close (scalar_t__) ;
 int free (TYPE_2__*) ;
 int munmap (int ,int ) ;
 int scaler_ctx_gen_reset (int *) ;

__attribute__((used)) static void v4l_free(void *data)
{
   video4linux_t *v4l = (video4linux_t*)data;

   unsigned i;
   for (i = 0; i < v4l->n_buffers; i++)
      if (munmap(v4l->buffers[i].start, v4l->buffers[i].length) == -1)
         RARCH_ERR("[V4L2]: munmap failed.\n");

   if (v4l->fd >= 0)
      close(v4l->fd);

   free(v4l->buffer_output);
   scaler_ctx_gen_reset(&v4l->scaler);
   free(v4l);
}

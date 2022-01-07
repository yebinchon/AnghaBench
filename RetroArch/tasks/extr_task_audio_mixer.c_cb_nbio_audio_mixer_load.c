
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct audio_mixer_handle {int copy_data_over; TYPE_2__* buffer; } ;
struct TYPE_3__ {int is_finished; int handle; scalar_t__ data; } ;
typedef TYPE_1__ nbio_handle_t ;
struct TYPE_4__ {unsigned int bufsize; void* buf; } ;
typedef TYPE_2__ nbio_buf_t ;


 scalar_t__ calloc (int,int) ;
 void* nbio_get_ptr (int ,size_t*) ;

__attribute__((used)) static int cb_nbio_audio_mixer_load(void *data, size_t len)
{
   nbio_handle_t *nbio = (nbio_handle_t*)data;
   struct audio_mixer_handle *mixer= (struct audio_mixer_handle*)nbio->data;
   void *ptr = nbio_get_ptr(nbio->handle, &len);
   nbio_buf_t *buffer = (nbio_buf_t*)calloc(1, sizeof(*mixer->buffer));

   if (!buffer)
      return -1;

   mixer->buffer = buffer;
   mixer->buffer->buf = ptr;
   mixer->buffer->bufsize = (unsigned)len;
   mixer->copy_data_over = 1;
   nbio->is_finished = 1;

   return 0;
}

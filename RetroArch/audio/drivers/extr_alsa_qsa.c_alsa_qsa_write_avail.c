
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf_count; int buf_size; scalar_t__ buffer_ptr; scalar_t__ buffered_blocks; } ;
typedef TYPE_1__ alsa_qsa_t ;



__attribute__((used)) static size_t alsa_qsa_write_avail(void *data)
{
   alsa_qsa_t *alsa = (alsa_qsa_t*)data;
   size_t avail = (alsa->buf_count -
         (int)alsa->buffered_blocks - 1) * alsa->buf_size +
      (alsa->buf_size - (int)alsa->buffer_ptr);
   return avail;
}

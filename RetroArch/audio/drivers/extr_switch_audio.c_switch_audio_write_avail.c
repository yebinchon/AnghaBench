
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* current_buffer; } ;
typedef TYPE_2__ switch_audio_t ;
struct TYPE_3__ {size_t buffer_size; } ;



__attribute__((used)) static size_t switch_audio_write_avail(void *data)
{
   switch_audio_t *swa = (switch_audio_t*) data;

   if (!swa || !swa->current_buffer)
      return 0;

   return swa->current_buffer->buffer_size;
}

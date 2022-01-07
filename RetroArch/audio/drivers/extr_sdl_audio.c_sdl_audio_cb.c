
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cond; int buffer; } ;
typedef TYPE_1__ sdl_audio_t ;
typedef int Uint8 ;


 int fifo_read (int ,int *,size_t) ;
 size_t fifo_read_avail (int ) ;
 int memset (int *,int ,int) ;
 int scond_signal (int ) ;

__attribute__((used)) static void sdl_audio_cb(void *data, Uint8 *stream, int len)
{
   sdl_audio_t *sdl = (sdl_audio_t*)data;
   size_t avail = fifo_read_avail(sdl->buffer);
   size_t write_size = len > (int)avail ? avail : len;

   fifo_read(sdl->buffer, stream, write_size);





   memset(stream + write_size, 0, len - write_size);
}

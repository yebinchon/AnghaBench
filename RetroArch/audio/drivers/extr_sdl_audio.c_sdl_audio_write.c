
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_2__ {int buffer; int lock; int cond; scalar_t__ nonblock; } ;
typedef TYPE_1__ sdl_audio_t ;


 int SDL_LockAudio () ;
 int SDL_UnlockAudio () ;
 int fifo_write (int ,char const*,size_t) ;
 size_t fifo_write_avail (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static ssize_t sdl_audio_write(void *data, const void *buf, size_t size)
{
   ssize_t ret = 0;
   sdl_audio_t *sdl = (sdl_audio_t*)data;

   if (sdl->nonblock)
   {
      size_t avail, write_amt;

      SDL_LockAudio();
      avail = fifo_write_avail(sdl->buffer);
      write_amt = avail > size ? size : avail;
      fifo_write(sdl->buffer, buf, write_amt);
      SDL_UnlockAudio();
      ret = write_amt;
   }
   else
   {
      size_t written = 0;

      while (written < size)
      {
         size_t avail;

         SDL_LockAudio();
         avail = fifo_write_avail(sdl->buffer);

         if (avail == 0)
         {
            SDL_UnlockAudio();





         }
         else
         {
            size_t write_amt = size - written > avail ? avail : size - written;
            fifo_write(sdl->buffer, (const char*)buf + written, write_amt);
            SDL_UnlockAudio();
            written += write_amt;
         }
      }
      ret = written;
   }

   return ret;
}

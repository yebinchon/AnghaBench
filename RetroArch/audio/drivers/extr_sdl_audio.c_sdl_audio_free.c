
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cond; int lock; int buffer; } ;
typedef TYPE_1__ sdl_audio_t ;


 int SDL_CloseAudio () ;
 int SDL_INIT_AUDIO ;
 int SDL_QuitSubSystem (int ) ;
 int fifo_free (int ) ;
 int free (TYPE_1__*) ;
 int scond_free (int ) ;
 int slock_free (int ) ;

__attribute__((used)) static void sdl_audio_free(void *data)
{
   sdl_audio_t *sdl = (sdl_audio_t*)data;

   SDL_CloseAudio();
   SDL_QuitSubSystem(SDL_INIT_AUDIO);

   if (sdl)
   {
      fifo_free(sdl->buffer);




   }
   free(sdl);
}

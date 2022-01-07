
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* current_pos; int current_emulated_samples; } ;
struct TYPE_3__ {short** buffer; } ;


 int SDL_LockAudio () ;
 int SDL_UnlockAudio () ;
 int audio_update () ;
 TYPE_2__ sdl_sound ;
 TYPE_1__ snd ;
 scalar_t__ use_sound ;

__attribute__((used)) static void sdl_sound_update()
{
  int i;
  short* p;

  int size = audio_update();

  if (use_sound)
  {
    SDL_LockAudio();
    p = (short*)sdl_sound.current_pos;
    for(i = 0; i < size; ++i) {
        *p = snd.buffer[0][i];
        ++p;
        *p = snd.buffer[1][i];
        ++p;
    }
    sdl_sound.current_pos = (char*)p;
    sdl_sound.current_emulated_samples += size * 2 * sizeof(short);
    SDL_UnlockAudio();
  }
}

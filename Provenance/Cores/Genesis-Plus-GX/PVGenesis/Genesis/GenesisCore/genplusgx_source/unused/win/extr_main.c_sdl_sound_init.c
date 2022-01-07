
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* buffer; char* current_pos; scalar_t__ current_emulated_samples; } ;
struct TYPE_5__ {int channels; int samples; int callback; int format; int freq; } ;
typedef TYPE_1__ SDL_AudioSpec ;


 int AUDIO_S16LSB ;
 int MessageBox (int *,char*,char*,int ) ;
 int SDL_INIT_AUDIO ;
 scalar_t__ SDL_Init (int ) ;
 int SDL_OpenAudio (TYPE_1__*,TYPE_1__*) ;
 int SOUND_FREQUENCY ;
 int SOUND_SAMPLES_SIZE ;
 scalar_t__ malloc (int) ;
 int memset (char*,int ,int) ;
 TYPE_2__ sdl_sound ;
 int sdl_sound_callback ;

__attribute__((used)) static int sdl_sound_init()
{
  int n;
  SDL_AudioSpec as_desired, as_obtained;

  if(SDL_Init(SDL_INIT_AUDIO) < 0) {
    MessageBox(((void*)0), "SDL Audio initialization failed", "Error", 0);
    return 0;
  }

  as_desired.freq = SOUND_FREQUENCY;
  as_desired.format = AUDIO_S16LSB;
  as_desired.channels = 2;
  as_desired.samples = SOUND_SAMPLES_SIZE;
  as_desired.callback = sdl_sound_callback;

  if(SDL_OpenAudio(&as_desired, &as_obtained) == -1) {
    MessageBox(((void*)0), "SDL Audio open failed", "Error", 0);
    return 0;
  }

  if(as_desired.samples != as_obtained.samples) {
    MessageBox(((void*)0), "SDL Audio wrong setup", "Error", 0);
    return 0;
  }

  sdl_sound.current_emulated_samples = 0;
  n = SOUND_SAMPLES_SIZE * 2 * sizeof(short) * 11;
  sdl_sound.buffer = (char*)malloc(n);
  if(!sdl_sound.buffer) {
    MessageBox(((void*)0), "Can't allocate audio buffer", "Error", 0);
    return 0;
  }
  memset(sdl_sound.buffer, 0, n);
  sdl_sound.current_pos = sdl_sound.buffer;
  return 1;
}

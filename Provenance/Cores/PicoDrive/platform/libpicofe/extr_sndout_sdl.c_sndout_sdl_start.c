
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int freq; int channels; int samples; int * userdata; int callback; int format; } ;
typedef TYPE_1__ SDL_AudioSpec ;


 int AUDIO_S16LSB ;
 char* SDL_GetError () ;
 int SDL_OpenAudio (TYPE_1__*,int *) ;
 int SDL_PauseAudio (int ) ;
 scalar_t__ buf_r ;
 scalar_t__ buf_w ;
 int callback ;
 int fprintf (int ,char*,char*) ;
 int sndout_sdl_stop () ;
 int started ;
 int stderr ;

int sndout_sdl_start(int rate, int stereo)
{
 SDL_AudioSpec desired;
 int samples, shift;
 int ret;

 if (started)
  sndout_sdl_stop();

 desired.freq = rate;
 desired.format = AUDIO_S16LSB;
 desired.channels = stereo ? 2 : 1;
 desired.callback = callback;
 desired.userdata = ((void*)0);

 samples = rate >> 6;
 for (shift = 8; (1 << shift) < samples; shift++)
  ;
 desired.samples = 1 << shift;

 ret = SDL_OpenAudio(&desired, ((void*)0));
 if (ret != 0) {
  fprintf(stderr, "SDL_OpenAudio: %s\n", SDL_GetError());
  return -1;
 }

 buf_w = buf_r = 0;

 SDL_PauseAudio(0);
 started = 1;

 return 0;
}

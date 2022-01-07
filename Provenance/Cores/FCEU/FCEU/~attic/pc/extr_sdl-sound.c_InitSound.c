
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int spec ;
struct TYPE_4__ {int freq; int channels; int samples; scalar_t__ userdata; int callback; int format; } ;
typedef TYPE_1__ SDL_AudioSpec ;
typedef int FCEUGI ;


 int AUDIO_S16SYS ;
 int Buffer ;
 scalar_t__ BufferIn ;
 scalar_t__ BufferRead ;
 int BufferSize ;
 scalar_t__ BufferWrite ;
 int FCEUI_Sound (int) ;
 int KillSound () ;
 int SDL_GetError () ;
 int SDL_INIT_AUDIO ;
 scalar_t__ SDL_InitSubSystem (int ) ;
 scalar_t__ SDL_OpenAudio (TYPE_1__*,int ) ;
 int SDL_PauseAudio (int ) ;
 int _sound ;
 int fillaudio ;
 int malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int puts (int ) ;
 int soundbufsize ;
 int soundrate ;

int InitSound(FCEUGI *gi)
{
 SDL_AudioSpec spec;
 if(!_sound) return(0);

 memset(&spec,0,sizeof(spec));
 if(SDL_InitSubSystem(SDL_INIT_AUDIO)<0)
 {
  puts(SDL_GetError());
  KillSound();
  return(0);
 }

 spec.freq = soundrate;
 spec.format = AUDIO_S16SYS;
 spec.channels = 1;
 spec.samples = 256;
 spec.callback = fillaudio;
 spec.userdata = 0;

 BufferSize = soundbufsize * soundrate / 1000;

 BufferSize -= spec.samples * 2;


 if(BufferSize < spec.samples) BufferSize = spec.samples;

 Buffer = malloc(sizeof(int) * BufferSize);
 BufferRead = BufferWrite = BufferIn = 0;



 if(SDL_OpenAudio(&spec,0)<0)
 {
  puts(SDL_GetError());
  KillSound();
  return(0);
 }
 SDL_PauseAudio(0);
 FCEUI_Sound(soundrate);
 return(1);
}

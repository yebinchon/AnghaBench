
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int freq; unsigned int frag_frames; int channels; int sample_size; } ;


 int FALSE ;
 int Log_print (char*,int) ;
 int MAX_CHANNELS ;
 int PLATFORM_SoundSetup (TYPE_1__*) ;
 int POKEYSND_BIT16 ;
 int POKEYSND_FREQ_17_EXACT ;
 int POKEYSND_Init (int ,int,int,int ) ;
 scalar_t__ POKEYSND_enable_new_pokey ;
 int POKEYSND_stereo_enabled ;
 int Sound_Exit () ;
 int Sound_SetLatency (int ) ;
 TYPE_1__ Sound_desired ;
 int Sound_enabled ;
 int Sound_latency ;
 TYPE_1__ Sound_out ;
 int TRUE ;
 int Util_malloc (int) ;
 int free (int ) ;
 int paused ;
 int process_buffer ;
 int process_buffer_size ;

int Sound_Setup(void)
{

 if (POKEYSND_enable_new_pokey && Sound_desired.freq < 8192)

  Sound_desired.freq = 8192;
 else if (Sound_desired.freq < 1000)

  Sound_desired.freq = 1000;
 else if (Sound_desired.freq > 65535)

  Sound_desired.freq = 65535;


 if (Sound_desired.frag_frames != 0) {

  unsigned int pow_val = 1;
  unsigned int val = Sound_desired.frag_frames;
  while (val >>= 1)
   pow_val <<= 1;
  if (pow_val < Sound_desired.frag_frames)
   pow_val <<= 1;
  Sound_desired.frag_frames = pow_val;

  if (Sound_desired.frag_frames < 16)

   Sound_desired.frag_frames = 16;
 }

 Sound_out = Sound_desired;
 if (!(Sound_enabled = PLATFORM_SoundSetup(&Sound_out)))
  return FALSE;


 if ((POKEYSND_enable_new_pokey && Sound_out.freq < 8192)
  || Sound_out.freq < 1000 || Sound_out.freq > 65535) {
  Log_print("%d frequency not supported", Sound_out.freq);
  Sound_Exit();
  return FALSE;
 }
 if (Sound_out.channels > MAX_CHANNELS) {
  Log_print("%d channels not supported", Sound_out.channels);
  Sound_Exit();
  return FALSE;
 }

 POKEYSND_stereo_enabled = Sound_out.channels == 2;

 free(process_buffer);
 process_buffer_size = Sound_out.frag_frames * Sound_out.channels * Sound_out.sample_size;
 process_buffer = Util_malloc(process_buffer_size);


 POKEYSND_Init(POKEYSND_FREQ_17_EXACT, Sound_out.freq, Sound_out.channels, Sound_out.sample_size == 2 ? POKEYSND_BIT16 : 0);





 Sound_desired.freq = Sound_out.freq;
 Sound_desired.sample_size = Sound_out.sample_size;
 Sound_desired.channels = Sound_out.channels;






 paused = TRUE;
 return TRUE;
}

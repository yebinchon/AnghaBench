
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audsrv_fmt_t {unsigned int freq; int channels; int bits; } ;
typedef int ps2_audio_t ;


 int AUDIO_BITS ;
 int AUDIO_CHANNELS ;
 int MAX_VOLUME ;
 char* audsrv_get_error_string () ;
 int audsrv_set_format (struct audsrv_fmt_t*) ;
 int audsrv_set_volume (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void audioConfigure(ps2_audio_t *ps2, unsigned rate)
{
   int err;
   struct audsrv_fmt_t format;

   format.bits = AUDIO_BITS;
   format.freq = rate;
   format.channels = AUDIO_CHANNELS;

   err = audsrv_set_format(&format);

   if (err)
   {
      printf("set format returned %d\n", err);
      printf("audsrv returned error string: %s\n", audsrv_get_error_string());
   }

   audsrv_set_volume(MAX_VOLUME);
}

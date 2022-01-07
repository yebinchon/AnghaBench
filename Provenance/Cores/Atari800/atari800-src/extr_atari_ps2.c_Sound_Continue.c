
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audsrv_fmt_t {int bits; int freq; int channels; } ;


 int Log_print (char*,int ) ;
 int MAX_VOLUME ;
 int audsrv_get_error_string () ;
 scalar_t__ audsrv_init () ;
 int audsrv_set_format (struct audsrv_fmt_t*) ;
 int audsrv_set_volume (int ) ;

void Sound_Continue(void)
{
 if (audsrv_init() != 0)
  Log_print("failed to initialize audsrv: %s", audsrv_get_error_string());
 else {
  struct audsrv_fmt_t format;
  format.bits = 8;
  format.freq = 44100;
  format.channels = 1;
  audsrv_set_format(&format);
  audsrv_set_volume(MAX_VOLUME);
 }
}

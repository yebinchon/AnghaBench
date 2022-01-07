
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seq; } ;
typedef TYPE_1__ alsa_midi_t ;


 int RARCH_ERR (char*,int) ;
 int snd_seq_drain_output (int ) ;

__attribute__((used)) static bool alsa_midi_flush(void *p)
{
   int r;
   alsa_midi_t *d = (alsa_midi_t*)p;

   r = snd_seq_drain_output(d->seq);





   return r == 0;
}

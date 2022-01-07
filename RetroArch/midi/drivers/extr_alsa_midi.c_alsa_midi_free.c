
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ seq; } ;
typedef TYPE_1__ alsa_midi_t ;


 int free (TYPE_1__*) ;
 int snd_seq_close (scalar_t__) ;

__attribute__((used)) static void alsa_midi_free(void *p)
{
   alsa_midi_t *d = (alsa_midi_t*)p;

   if (d)
   {
      if (d->seq)
         snd_seq_close(d->seq);
      free(d);
   }
}

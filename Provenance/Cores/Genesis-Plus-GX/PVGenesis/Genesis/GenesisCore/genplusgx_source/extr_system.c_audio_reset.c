
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__** blips; } ;


 int audio_set_equalizer () ;
 int blip_clear (scalar_t__) ;
 scalar_t__ llp ;
 scalar_t__ rrp ;
 TYPE_1__ snd ;

void audio_reset(void)
{
  int i,j;


  for (i=0; i<3; i++)
  {
    for (j=0; j<2; j++)
    {
      if (snd.blips[i][j])
      {
        blip_clear(snd.blips[i][j]);
      }
    }
  }


  llp = 0;
  rrp = 0;


  audio_set_equalizer();
}

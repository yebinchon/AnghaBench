
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__** blips; } ;


 int blip_delete (scalar_t__) ;
 TYPE_1__ snd ;

void audio_shutdown(void)
{
  int i,j;


  for (i=0; i<3; i++)
  {
    for (j=0; j<2; j++)
    {
      blip_delete(snd.blips[i][j]);
      snd.blips[i][j] = 0;
    }
  }
}

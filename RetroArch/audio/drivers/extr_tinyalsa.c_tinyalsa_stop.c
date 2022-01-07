
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; int pcm; scalar_t__ can_pause; } ;
typedef TYPE_1__ tinyalsa_t ;


 int pcm_pause (int ,int) ;

__attribute__((used)) static bool
tinyalsa_stop(void *data)
{
 tinyalsa_t *tinyalsa = (tinyalsa_t*)data;

 if (tinyalsa->can_pause && !tinyalsa->is_paused)
   {
  int ret = pcm_pause(tinyalsa->pcm, 1);
  if (ret < 0)
   return 0;

  tinyalsa->is_paused = 1;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ PsndRate ;
 scalar_t__* sound_rates ;

void pemu_sound_stop(void)
{
 int i;


 PsndRate += 1000;
 for (i = 0; i < ARRAY_SIZE(sound_rates); i++) {
  if (PsndRate >= sound_rates[i]) {
   PsndRate = sound_rates[i];
   break;
  }
 }
}

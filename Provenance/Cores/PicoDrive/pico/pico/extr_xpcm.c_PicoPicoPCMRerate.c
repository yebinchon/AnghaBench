
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PsndRate ;
 int stepsamples ;

void PicoPicoPCMRerate(int xpcm_rate)
{
  stepsamples = (PsndRate<<10)/xpcm_rate;
}

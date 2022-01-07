
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POPT_EN_STEREO ;
 int PicoOpt ;
 int PicoWriteSound (int) ;
 int PsndClear () ;
 int PsndLen ;
 int PsndRender (int,int) ;
 int emustatus ;

void PsndGetSamples(int y)
{







  static int curr_pos = 0;

  if (y == 224)
  {
    if (emustatus & 2)
         curr_pos += PsndRender(curr_pos, PsndLen-PsndLen/2);
    else curr_pos = PsndRender(0, PsndLen);
    if (emustatus & 1)
         emustatus |= 2;
    else emustatus &= ~2;
    if (PicoWriteSound)
      PicoWriteSound(curr_pos * ((PicoOpt & POPT_EN_STEREO) ? 4 : 2));

    PsndClear();
  }
  else if (emustatus & 3) {
    emustatus|= 2;
    emustatus&=~1;
    curr_pos = PsndRender(0, PsndLen/2);
  }

}

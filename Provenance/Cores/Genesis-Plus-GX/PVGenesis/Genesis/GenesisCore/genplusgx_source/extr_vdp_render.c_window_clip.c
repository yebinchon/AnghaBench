
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int left; unsigned int right; int enable; } ;


 TYPE_1__* clip ;

void window_clip(unsigned int data, unsigned int sw)
{

  int hp = (data & 0x1f);
  int hf = (data >> 7) & 1;




  int a = hf;
  int w = hf ^ 1;


  sw = 16 + (sw << 2);

  if(hp)
  {
    if(hp > sw)
    {

      clip[w].left = 0;
      clip[w].right = sw;
      clip[w].enable = 1;
      clip[a].enable = 0;
    }
    else
    {

      clip[w].left = 0;
      clip[a].right = sw;
      clip[a].left = clip[w].right = hp;
      clip[0].enable = clip[1].enable = 1;
    }
  }
  else
  {

    clip[a].left = 0;
    clip[a].right = sw;
    clip[a].enable = 1;
    clip[w].enable = 0;
  }
}

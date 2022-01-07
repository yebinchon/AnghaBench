
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean ;


 scalar_t__ wipe_scr ;
 scalar_t__ wipe_scr_end ;
 scalar_t__ wipe_scr_start ;
 int* y ;

int
wipe_doMelt
( int width,
  int height,
  int ticks )
{
    int i;
    int j;
    int dy;
    int idx;

    short* s;
    short* d;
    boolean done = 1;

    width/=2;

    while (ticks--)
    {
 for (i=0;i<width;i++)
 {
     if (y[i]<0)
     {
  y[i]++; done = 0;
     }
     else if (y[i] < height)
     {
  dy = (y[i] < 16) ? y[i]+1 : 8;
  if (y[i]+dy >= height) dy = height - y[i];
  s = &((short *)wipe_scr_end)[i*height+y[i]];
  d = &((short *)wipe_scr)[y[i]*width+i];
  idx = 0;
  for (j=dy;j;j--)
  {
      d[idx] = *(s++);
      idx += width;
  }
  y[i] += dy;
  s = &((short *)wipe_scr_start)[i*height];
  d = &((short *)wipe_scr)[y[i]*width+i];
  idx = 0;
  for (j=height-y[i];j;j--)
  {
      d[idx] = *(s++);
      idx += width;
  }
  done = 0;
     }
 }
    }

    return done;

}

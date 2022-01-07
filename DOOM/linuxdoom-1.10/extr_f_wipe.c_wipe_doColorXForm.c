
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;
typedef int boolean ;


 int* wipe_scr ;
 int* wipe_scr_end ;

int
wipe_doColorXForm
( int width,
  int height,
  int ticks )
{
    boolean changed;
    byte* w;
    byte* e;
    int newval;

    changed = 0;
    w = wipe_scr;
    e = wipe_scr_end;

    while (w!=wipe_scr+width*height)
    {
 if (*w != *e)
 {
     if (*w > *e)
     {
  newval = *w - ticks;
  if (newval < *e)
      *w = *e;
  else
      *w = newval;
  changed = 1;
     }
     else if (*w < *e)
     {
  newval = *w + ticks;
  if (newval > *e)
      *w = *e;
  else
      *w = newval;
  changed = 1;
     }
 }
 w++;
 e++;
    }

    return !changed;

}

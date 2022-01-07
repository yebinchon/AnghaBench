
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (int ,int ,int) ;
 int wipe_scr ;
 int wipe_scr_start ;

int
wipe_initColorXForm
( int width,
  int height,
  int ticks )
{
    memcpy(wipe_scr, wipe_scr_start, width*height);
    return 0;
}

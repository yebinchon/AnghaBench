
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;
typedef int s32 ;



__attribute__((used)) static void __pad_clampstick(s8 *px,s8 *py,s8 max,s8 xy,s8 min)
{
 s32 x,y,signX,signY,d;

 x = *px;
 y = *py;
 if(x>=0) signX = 1;
 else { signX = -1; x = -(x); }

 if(y>=0) signY = 1;
 else { signY = -1; y = -(y); }

 if(x<=min) x = 0;
 else x -= min;

 if(y<=min) y = 0;
 else y -= min;

 if(x!=0 || y!=0) {
  s32 xx,yy,maxy;

  xx = (x * xy);
  yy= (y * xy);
  maxy = (max * xy);
  if(yy<=xx) {
   d = ((x * xy) + (y * (max - xy)));
   if(maxy<d) {
    x = ((x * maxy)/d);
    y = ((y * maxy)/d);
   }
  } else {
   d = ((y * xy) + (x * (max - xy)));
   if(maxy<d) {
    x = ((x * maxy)/d);
    y = ((y * maxy)/d);
   }
  }
  *px = (s8)(x * signX);
  *py = (s8)(y * signY);
 } else
  *px = *py = 0;
}

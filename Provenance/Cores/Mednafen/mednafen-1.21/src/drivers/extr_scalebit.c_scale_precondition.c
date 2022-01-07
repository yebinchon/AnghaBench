
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int scale_precondition(unsigned scale, unsigned pixel, unsigned width, unsigned height)
{
 if (scale != 2 && scale != 3 && scale != 4)
  return -1;

 if (pixel != 1 && pixel != 2 && pixel != 4)
  return -1;

 switch (scale) {
 case 2 :
 case 3 :
  if (height < 2)
   return -1;
  break;
 case 4 :
  if (height < 4)
   return -1;
  break;
 }
 if (width < 2)
  return -1;


 return 0;
}

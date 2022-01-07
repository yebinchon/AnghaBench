
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float applyCalibration(float inval,float minval, float maxval,float centerval)
{
   float ret;



   if (inval == centerval)
      ret = 0;
   else if (inval < centerval)
      ret = (inval - centerval) / (centerval - minval + 1);
   else
      ret = (inval - centerval) / (maxval - centerval + 1);
   return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int WindowLogic(int wctl, int w0, int w1)
{
   if (((wctl & 0x80) == 0x80))

      return w0 || w1;
   else

      return w0 && w1;
}

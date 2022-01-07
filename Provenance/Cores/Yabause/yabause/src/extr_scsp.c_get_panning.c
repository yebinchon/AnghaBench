
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void get_panning(int pan, int * pan_val_l, int * pan_val_r)
{
   if (pan & 0x10)
   {

      *pan_val_l = 0;
      *pan_val_r = pan & 0xf;
   }
   else
   {
      *pan_val_l = pan & 0xf;
      *pan_val_r = 0;
   }
}

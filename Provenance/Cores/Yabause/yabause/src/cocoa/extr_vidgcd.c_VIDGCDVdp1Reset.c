
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vdp1clipxend ;
 scalar_t__ vdp1clipxstart ;
 int vdp1clipyend ;
 scalar_t__ vdp1clipystart ;

int VIDGCDVdp1Reset(void)
{
   vdp1clipxstart = 0;
   vdp1clipxend = 512;
   vdp1clipystart = 0;
   vdp1clipyend = 256;

   return 0;
}

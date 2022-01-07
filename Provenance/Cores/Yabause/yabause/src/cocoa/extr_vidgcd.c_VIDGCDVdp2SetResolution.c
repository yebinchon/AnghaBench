
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int resxratio ;
 int resyratio ;
 int vdp2height ;
 int vdp2width ;

void VIDGCDVdp2SetResolution(u16 TVMD)
{



   switch (TVMD & 0x7)
   {
      case 0:
         vdp2width = 320;
         resxratio=1;
         break;
      case 1:
         vdp2width = 352;
         resxratio=1;
         break;
      case 2:
         vdp2width = 320;
         resxratio=2;
         break;
      case 3:
         vdp2width = 352;
         resxratio=2;
         break;
      case 4:
         vdp2width = 320;
         resxratio=1;
         break;
      case 5:
         vdp2width = 352;
         resxratio=1;
         break;
      case 6:
         vdp2width = 320;
         resxratio=2;
         break;
      case 7:
         vdp2width = 352;
         resxratio=2;
         break;
   }


   switch ((TVMD >> 4) & 0x3)
   {
      case 0:
         vdp2height = 224;
         break;
      case 1:
         vdp2height = 240;
         break;
      case 2:
         vdp2height = 256;
         break;
      default: break;
   }
   resyratio=1;


   switch ((TVMD >> 6) & 0x3)
   {
      case 3:

         resyratio=2;
         break;
      case 2:
      case 0:
      default: break;
   }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int* TOC; } ;


 TYPE_1__* Cs2Area ;

u32 Cs2TrackToFAD(u16 trackandindex) {
  if (trackandindex == 0xFFFF)

     return (Cs2Area->TOC[101] & 0x00FFFFFF);
  if (trackandindex != 0x0000)
  {


     if ((trackandindex & 0xFF) == 0x01)

        return (Cs2Area->TOC[(trackandindex >> 8) - 1] & 0x00FFFFFF);
     else if ((trackandindex & 0xFF) == 0x63)

        return ((Cs2Area->TOC[(trackandindex >> 8)] & 0x00FFFFFF) - 1);
  }


  return 0;
}

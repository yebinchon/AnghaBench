
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int* TOC; } ;


 TYPE_1__* Cs2Area ;

u8 Cs2FADToTrack(u32 val) {
  int i;
  for (i = 0; i < 99; i++)
  {
     if (Cs2Area->TOC[i] == 0xFFFFFFFF) return 0xFF;

     if (val >= (Cs2Area->TOC[i] & 0xFFFFFF) && val < (Cs2Area->TOC[i + 1] & 0xFFFFFF))
        return (i + 1);
  }

  return 0;
}

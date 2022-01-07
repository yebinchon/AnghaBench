
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ctrladdr; int* TOC; int index; int track; int FAD; scalar_t__ repcnt; scalar_t__ options; } ;


 TYPE_1__* Cs2Area ;

void Cs2SetupDefaultPlayStats(u8 track_number, int writeFAD) {
  if (track_number != 0xFF)
  {
     Cs2Area->options = 0;
     Cs2Area->repcnt = 0;
     Cs2Area->ctrladdr = (u8)(Cs2Area->TOC[track_number - 1] >> 24);
     Cs2Area->index = 1;
     Cs2Area->track = track_number;
     if (writeFAD)
        Cs2Area->FAD = Cs2Area->TOC[track_number - 1] & 0x00FFFFFF;
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int CR1; int CR2; int HIRQ; } ;
struct TYPE_4__ {int* TOC; int FAD; int index; int options; int repcnt; int ctrladdr; int track; TYPE_1__ reg; void* status; } ;


 int CDB_HIRQ_CMOK ;
 void* CDB_STAT_PAUSE ;
 void* CDB_STAT_STANDBY ;
 TYPE_2__* Cs2Area ;
 int Cs2SetTiming (int ) ;
 int Cs2SetupDefaultPlayStats (int,int) ;
 int doCDReport (void*) ;

void Cs2SeekDisc(void) {
  if (Cs2Area->reg.CR1 & 0x80)
  {

     u32 sdFAD;
  int i;

     sdFAD = ((Cs2Area->reg.CR1 & 0x0F) << 16) | Cs2Area->reg.CR2;
  Cs2Area->status = CDB_STAT_PAUSE;
  for (i = 0; i < 16; i++){
   u32 tfad = Cs2Area->TOC[i] & 0x00FFFFFF;
   if (tfad >= sdFAD){
    Cs2SetupDefaultPlayStats(i, 1);
    Cs2Area->FAD = sdFAD;
    break;
   }
  }

  }
  else
  {

     if (Cs2Area->reg.CR2 >> 8)
     {

        Cs2Area->status = CDB_STAT_PAUSE;
        Cs2SetupDefaultPlayStats((Cs2Area->reg.CR2 >> 8), 1);
        Cs2Area->index = Cs2Area->reg.CR2 & 0xFF;
     }
     else
     {

        Cs2Area->status = CDB_STAT_STANDBY;
        Cs2Area->options = 0xFF;
        Cs2Area->repcnt = 0xFF;
        Cs2Area->ctrladdr = 0xFF;
        Cs2Area->track = 0xFF;
        Cs2Area->index = 0xFF;
        Cs2Area->FAD = 0xFFFFFFFF;
     }
  }

  Cs2SetTiming(0);

  doCDReport(Cs2Area->status);
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK;
}

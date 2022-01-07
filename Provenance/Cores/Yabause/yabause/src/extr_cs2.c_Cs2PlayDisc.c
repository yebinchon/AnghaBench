
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int CR1; int CR2; int CR3; int CR4; int HIRQ; } ;
struct TYPE_6__ {int playFAD; int FAD; int maxrepeat; int playendFAD; TYPE_2__ reg; int status; TYPE_1__* cdi; int playtype; void* index; void* track; } ;
struct TYPE_4__ {int (* ReadAheadFAD ) (int) ;} ;


 int CDB_HIRQ_CMOK ;
 int CDB_PLAYTYPE_SECTOR ;
 int CDB_STAT_PLAY ;
 int CDLOG (char*,int) ;
 TYPE_3__* Cs2Area ;
 void* Cs2FADToTrack (int) ;
 int Cs2SetTiming (int) ;
 int Cs2SetupDefaultPlayStats (void*,int) ;
 void* Cs2TrackToFAD (int) ;
 int doCDReport (int ) ;
 int stub1 (int) ;

void Cs2PlayDisc(void) {
  u32 pdspos;
  u32 pdepos;
  u32 pdpmode;


  pdspos = ((Cs2Area->reg.CR1 & 0xFF) << 16) | Cs2Area->reg.CR2;
  pdepos = ((Cs2Area->reg.CR3 & 0xFF) << 16) | Cs2Area->reg.CR4;
  pdpmode = Cs2Area->reg.CR3 >> 8;


  if (pdspos == 0xFFFFFF || pdpmode == 0xFF)
  {

  }
  else if (pdspos & 0x800000)
  {

     Cs2Area->playFAD = (pdspos & 0xFFFFF);

     Cs2SetupDefaultPlayStats(Cs2FADToTrack(Cs2Area->playFAD), 0);

     if (!(pdpmode & 0x80))

        Cs2Area->FAD = Cs2Area->playFAD;
  }
  else
  {



     if (pdspos == 0)
        pdspos = 0x0100;

     if (!(pdpmode & 0x80))
     {
        Cs2SetupDefaultPlayStats((u8)(pdspos >> 8), 1);
        Cs2Area->playFAD = Cs2Area->FAD;
        Cs2Area->track = (u8)(pdspos >> 8);
        Cs2Area->index = (u8)pdspos;
     }
     else
     {

        Cs2SetupDefaultPlayStats((u8)(pdspos >> 8), 0);
     }
  }

  pdpmode &= 0x7F;


  if (pdpmode != 0x7F)
     Cs2Area->maxrepeat = pdpmode;


  if (pdepos == 0xFFFFFF)
  {

  }
  else if (pdepos & 0x800000)
  {

     Cs2Area->playendFAD = Cs2Area->playFAD+(pdepos & 0xFFFFF);
  }
  else if (pdepos != 0)
  {

     pdepos += 0x100;

     if ((pdepos & 0xFF) == 0)
        Cs2Area->playendFAD = Cs2TrackToFAD((u16)(pdepos | 0x0063));
     else
        Cs2Area->playendFAD = Cs2TrackToFAD((u16)pdepos);
  }
  else
  {

     Cs2Area->playendFAD = Cs2TrackToFAD(0xFFFF);
  }







  Cs2SetTiming(1);

  Cs2Area->status = CDB_STAT_PLAY;
  Cs2Area->playtype = CDB_PLAYTYPE_SECTOR;
  Cs2Area->cdi->ReadAheadFAD(Cs2Area->FAD);

  doCDReport(Cs2Area->status);
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK;
}

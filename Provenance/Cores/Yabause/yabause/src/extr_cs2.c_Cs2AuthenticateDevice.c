
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CR2; int CR1; int CR3; int CR4; int HIRQ; } ;
struct TYPE_4__ {int status; int mpgauth; int isonesectorstored; int satauth; TYPE_1__ reg; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_CSCT ;
 int CDB_HIRQ_EFLS ;
 int CDB_HIRQ_MPED ;
 int CDB_STAT_BUSY ;
 int CDB_STAT_NODISC ;
 int CDB_STAT_OPEN ;
 int CDB_STAT_PAUSE ;
 TYPE_2__* Cs2Area ;
 int doCDReport (int) ;

void Cs2AuthenticateDevice(void) {
  int mpegauth;

  mpegauth = Cs2Area->reg.CR2 & 0xFF;


  if ((Cs2Area->status & 0xF) != CDB_STAT_NODISC &&
      (Cs2Area->status & 0xF) != CDB_STAT_OPEN)
  {

     Cs2Area->status = CDB_STAT_BUSY;

     Cs2Area->reg.CR1 = (Cs2Area->status << 8) | 0xFF;
     Cs2Area->reg.CR2 = 0xFFFF;
     Cs2Area->reg.CR3 = 0xFFFF;
     Cs2Area->reg.CR4 = 0xFFFF;

     if (mpegauth == 1)
     {
        Cs2Area->reg.HIRQ |= CDB_HIRQ_MPED;
        Cs2Area->mpgauth = 2;
     }
     else
     {

        Cs2Area->isonesectorstored = 1;
        Cs2Area->reg.HIRQ |= CDB_HIRQ_EFLS | CDB_HIRQ_CSCT;
        Cs2Area->satauth = 4;
     }



     Cs2Area->status = CDB_STAT_PAUSE;
  }
  else
  {
     if (mpegauth == 1)
     {
        Cs2Area->reg.HIRQ |= CDB_HIRQ_MPED;
        Cs2Area->mpgauth = 2;
     }
     else
        Cs2Area->reg.HIRQ |= CDB_HIRQ_EFLS | CDB_HIRQ_CSCT;
  }

  doCDReport(Cs2Area->status);
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK;
}

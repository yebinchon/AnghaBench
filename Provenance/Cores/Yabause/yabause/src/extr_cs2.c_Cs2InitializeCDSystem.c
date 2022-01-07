
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int CR1; int HIRQ; } ;
struct TYPE_4__ {int status; int FAD; int speed1x; TYPE_1__ reg; scalar_t__ isdiskchanged; scalar_t__ isbufferfull; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_DCHG ;
 int CDB_HIRQ_ESEL ;
 int CDB_STAT_NODISC ;
 int CDB_STAT_OPEN ;
 int CDB_STAT_PAUSE ;
 TYPE_2__* Cs2Area ;
 int doCDReport (int) ;

void Cs2InitializeCDSystem(void) {
  u16 val = 0;
  u8 initflag = Cs2Area->reg.CR1 & 0xFF;

  if ((Cs2Area->status & 0xF) != CDB_STAT_OPEN && (Cs2Area->status & 0xF) != CDB_STAT_NODISC)
  {
     Cs2Area->status = CDB_STAT_PAUSE;
     Cs2Area->FAD = 150;
  }

  if (initflag & 0x1)
  {

  }

  if (initflag & 0x2)
  {

  }

  if (initflag & 0x4)
  {

  }

  if (initflag & 0x8)
  {

  }

  if (initflag & 0x10)
     Cs2Area->speed1x = 1;
  else
     Cs2Area->speed1x = 0;

  val = Cs2Area->reg.HIRQ & 0xFFE5;
  Cs2Area->isbufferfull = 0;

  if (Cs2Area->isdiskchanged)
     val |= CDB_HIRQ_DCHG;
  else
     val &= ~CDB_HIRQ_DCHG;

  doCDReport(Cs2Area->status);
  Cs2Area->reg.HIRQ = val | CDB_HIRQ_CMOK | CDB_HIRQ_ESEL;
}

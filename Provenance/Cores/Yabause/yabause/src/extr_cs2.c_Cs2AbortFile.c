
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HIRQ; } ;
struct TYPE_4__ {int status; int datatranstype; TYPE_1__ reg; scalar_t__ cdwnum; scalar_t__ isonesectorstored; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_EFLS ;
 int CDB_STAT_NODISC ;
 int CDB_STAT_OPEN ;
 int CDB_STAT_PAUSE ;
 TYPE_2__* Cs2Area ;
 int doCDReport (int) ;

void Cs2AbortFile(void) {
  if ((Cs2Area->status & 0xF) != CDB_STAT_OPEN &&
      (Cs2Area->status & 0xF) != CDB_STAT_NODISC)
     Cs2Area->status = CDB_STAT_PAUSE;
  Cs2Area->isonesectorstored = 0;
  Cs2Area->datatranstype = -1;
  Cs2Area->cdwnum = 0;
  doCDReport(Cs2Area->status);
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EFLS;
}

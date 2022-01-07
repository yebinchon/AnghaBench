
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int CR3; int HIRQ; } ;
struct TYPE_4__ {TYPE_1__ reg; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_EHST ;
 int CDB_STAT_REJECT ;
 TYPE_2__* Cs2Area ;
 int MAX_SELECTORS ;
 int doCDReport (int ) ;

void Cs2PutSectorData(void) {
  u32 psdfiltno;

  psdfiltno = Cs2Area->reg.CR3 >> 8;

  if (psdfiltno < MAX_SELECTORS)
  {

     Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EHST;
  }
  else
  {
     doCDReport(CDB_STAT_REJECT);
     Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EHST;
  }
}

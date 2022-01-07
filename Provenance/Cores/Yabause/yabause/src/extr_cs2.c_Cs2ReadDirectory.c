
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int CR3; int HIRQ; int CR4; } ;
struct TYPE_4__ {TYPE_1__ reg; int status; scalar_t__ filter; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_EFLS ;
 int CDB_STAT_REJECT ;
 int CDLOG (char*) ;
 TYPE_2__* Cs2Area ;
 scalar_t__ Cs2ReadFileSystem (scalar_t__,int,int) ;
 int doCDReport (int ) ;

void Cs2ReadDirectory(void) {
  u32 rdfilternum;

  rdfilternum = (Cs2Area->reg.CR3 >> 8);

  if (rdfilternum == 0xFF)
  {
     doCDReport(CDB_STAT_REJECT);
     Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EFLS;
     return;
  }
  else if (rdfilternum < 0x24)
  {
     if (Cs2ReadFileSystem(Cs2Area->filter + rdfilternum, ((Cs2Area->reg.CR3 & 0xFF) << 8) | Cs2Area->reg.CR4, 1) != 0)
     {
        CDLOG("cs2\t: ReadFileSystem failed\n");
        doCDReport(CDB_STAT_REJECT);
        Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EFLS;
        return;
     }
  }

  doCDReport(Cs2Area->status);
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EFLS;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int CR3; int CR4; int CR1; int CR2; int HIRQ; } ;
struct TYPE_4__ {int infotranstype; int status; TYPE_1__ reg; scalar_t__ transfercount; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_DRDY ;
 TYPE_2__* Cs2Area ;
 int Cs2SetupFileInfoTransfer (int) ;

void Cs2GetFileInfo(void) {
  u32 gfifid;

  gfifid = ((Cs2Area->reg.CR3 & 0xFF) << 16) | Cs2Area->reg.CR4;

  if (gfifid == 0xFFFFFF)
  {
     Cs2Area->transfercount = 0;
     Cs2Area->infotranstype = 2;

     Cs2Area->reg.CR1 = Cs2Area->status << 8;
     Cs2Area->reg.CR2 = 0x05F4;
     Cs2Area->reg.CR3 = 0;
     Cs2Area->reg.CR4 = 0;
  }
  else
  {
     Cs2SetupFileInfoTransfer(gfifid);

     Cs2Area->transfercount = 0;
     Cs2Area->infotranstype = 1;

     Cs2Area->reg.CR1 = Cs2Area->status << 8;
     Cs2Area->reg.CR2 = 0x06;
     Cs2Area->reg.CR3 = 0;
     Cs2Area->reg.CR4 = 0;
  }

  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_DRDY;
}

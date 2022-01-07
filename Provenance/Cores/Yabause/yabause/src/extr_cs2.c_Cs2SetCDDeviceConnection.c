
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_3__ {int CR3; int HIRQ; } ;
struct TYPE_4__ {TYPE_1__ reg; int status; scalar_t__ outconcddevnum; int * filter; int * outconcddev; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_ESEL ;
 TYPE_2__* Cs2Area ;
 int doCDReport (int ) ;

void Cs2SetCDDeviceConnection(void) {
  u32 scdcfilternum;

  scdcfilternum = (Cs2Area->reg.CR3 >> 8);

  if (scdcfilternum == 0xFF)
     Cs2Area->outconcddev = ((void*)0);
  else if (scdcfilternum < 0x24)
     Cs2Area->outconcddev = Cs2Area->filter + scdcfilternum;

  Cs2Area->outconcddevnum = (u8)scdcfilternum;

  doCDReport(Cs2Area->status);
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_ESEL;
}

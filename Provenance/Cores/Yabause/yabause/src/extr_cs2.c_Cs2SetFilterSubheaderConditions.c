
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_5__ {int CR3; int CR1; int CR2; int CR4; int HIRQ; } ;
struct TYPE_6__ {TYPE_2__ reg; int status; TYPE_1__* filter; } ;
struct TYPE_4__ {int chan; int smmask; int cimask; int fid; int smval; int cival; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_ESEL ;
 TYPE_3__* Cs2Area ;
 int doCDReport (int ) ;

void Cs2SetFilterSubheaderConditions(void) {
  u8 sfscfilternum;

  sfscfilternum = Cs2Area->reg.CR3 >> 8;

  Cs2Area->filter[sfscfilternum].chan = Cs2Area->reg.CR1 & 0xFF;
  Cs2Area->filter[sfscfilternum].smmask = Cs2Area->reg.CR2 >> 8;
  Cs2Area->filter[sfscfilternum].cimask = Cs2Area->reg.CR2 & 0xFF;
  Cs2Area->filter[sfscfilternum].fid = Cs2Area->reg.CR3 & 0xFF;;
  Cs2Area->filter[sfscfilternum].smval = Cs2Area->reg.CR4 >> 8;
  Cs2Area->filter[sfscfilternum].cival = Cs2Area->reg.CR4 & 0xFF;

  doCDReport(Cs2Area->status);
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_ESEL;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
typedef void* u16 ;
struct TYPE_5__ {size_t CR2; int CR3; size_t CR4; int HIRQ; } ;
struct TYPE_6__ {TYPE_2__ reg; int status; void* datasectstotrans; void* datatranssectpos; scalar_t__ datanumsecttrans; scalar_t__ datatransoffset; scalar_t__ datatranspartitionnum; TYPE_1__* partition; TYPE_1__* datatranspartition; scalar_t__ datatranstype; scalar_t__ cdwnum; } ;
struct TYPE_4__ {scalar_t__ numblocks; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_DRDY ;
 int CDB_HIRQ_EHST ;
 int CDB_STAT_REJECT ;
 int CDLOG (char*) ;
 int CalcSectorOffsetNumber (size_t,size_t*,size_t*) ;
 TYPE_3__* Cs2Area ;
 size_t MAX_SELECTORS ;
 int doCDReport (int ) ;

void Cs2GetSectorData(void)
{
   u32 gsdsectoffset;
   u32 gsdbufno;
   u32 gsdsectnum;

   gsdsectoffset = Cs2Area->reg.CR2;
   gsdbufno = Cs2Area->reg.CR3 >> 8;
   gsdsectnum = Cs2Area->reg.CR4;

   if (gsdbufno >= MAX_SELECTORS)
   {
      doCDReport(CDB_STAT_REJECT);
      Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EHST;
      return;
   }

   if (Cs2Area->partition[gsdbufno].numblocks == 0)
   {
      CDLOG("No sectors available\n");

      doCDReport(CDB_STAT_REJECT);
      Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EHST;
      return;
   }

   CalcSectorOffsetNumber(gsdbufno, &gsdsectoffset, &gsdsectnum);


   Cs2Area->cdwnum = 0;
   Cs2Area->datatranstype = 0;
   Cs2Area->datatranspartition = Cs2Area->partition + gsdbufno;
   Cs2Area->datatranspartitionnum = (u8)gsdbufno;
   Cs2Area->datatransoffset = 0;
   Cs2Area->datanumsecttrans = 0;
   Cs2Area->datatranssectpos = (u16)gsdsectoffset;
   Cs2Area->datasectstotrans = (u16)gsdsectnum;

   doCDReport(Cs2Area->status);
   Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_DRDY | CDB_HIRQ_EHST;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int CR3; int CR1; int CR2; int CR4; int HIRQ; } ;
struct TYPE_6__ {int status; TYPE_2__ reg; TYPE_1__* mpegcon; } ;
struct TYPE_4__ {int audcon; int audlay; int audbufnum; int vidcon; int vidlay; int vidbufnum; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_MPCM ;
 TYPE_3__* Cs2Area ;

void Cs2MpegGetConnection(void) {
   int mgcnext = (Cs2Area->reg.CR3 >> 8);

   if (mgcnext == 0)
   {

      Cs2Area->reg.CR1 = (Cs2Area->status << 8) | Cs2Area->mpegcon[0].audcon;
      Cs2Area->reg.CR2 = (Cs2Area->mpegcon[0].audlay << 8) | Cs2Area->mpegcon[0].audbufnum;
      Cs2Area->reg.CR3 = Cs2Area->mpegcon[0].vidcon;
      Cs2Area->reg.CR4 = (Cs2Area->mpegcon[0].vidlay << 8) | Cs2Area->mpegcon[0].vidbufnum;
   }
   else
   {

      Cs2Area->reg.CR1 = (Cs2Area->status << 8) | Cs2Area->mpegcon[1].audcon;
      Cs2Area->reg.CR2 = (Cs2Area->mpegcon[1].audlay << 8) | Cs2Area->mpegcon[1].audbufnum;
      Cs2Area->reg.CR3 = Cs2Area->mpegcon[1].vidcon;
      Cs2Area->reg.CR4 = (Cs2Area->mpegcon[1].vidlay << 8) | Cs2Area->mpegcon[1].vidbufnum;
   }

   Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_MPCM;
}

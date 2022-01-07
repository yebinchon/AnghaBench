
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int CR3; int CR1; int CR2; int CR4; int HIRQ; } ;
struct TYPE_6__ {TYPE_2__ reg; int status; TYPE_1__* mpegcon; } ;
struct TYPE_4__ {int audcon; int audlay; int audbufnum; int vidcon; int vidlay; int vidbufnum; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_MPCM ;
 TYPE_3__* Cs2Area ;
 int doMPEGReport (int ) ;

void Cs2MpegSetConnection(void) {
   int mscnext = (Cs2Area->reg.CR3 >> 8);

   if (mscnext == 0)
   {

      Cs2Area->mpegcon[0].audcon = Cs2Area->reg.CR1 & 0xFF;
      Cs2Area->mpegcon[0].audlay = Cs2Area->reg.CR2 >> 8;
      Cs2Area->mpegcon[0].audbufnum = Cs2Area->reg.CR2 & 0xFF;
      Cs2Area->mpegcon[0].vidcon = Cs2Area->reg.CR3 & 0xFF;
      Cs2Area->mpegcon[0].vidlay = Cs2Area->reg.CR4 >> 8;
      Cs2Area->mpegcon[0].vidbufnum = Cs2Area->reg.CR4 & 0xFF;
   }
   else
   {

      Cs2Area->mpegcon[1].audcon = Cs2Area->reg.CR1 & 0xFF;
      Cs2Area->mpegcon[1].audlay = Cs2Area->reg.CR2 >> 8;
      Cs2Area->mpegcon[1].audbufnum = Cs2Area->reg.CR2 & 0xFF;
      Cs2Area->mpegcon[1].vidcon = Cs2Area->reg.CR3 & 0xFF;
      Cs2Area->mpegcon[1].vidlay = Cs2Area->reg.CR4 >> 8;
      Cs2Area->mpegcon[1].vidbufnum = Cs2Area->reg.CR4 & 0xFF;
   }

   doMPEGReport(Cs2Area->status);
   Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_MPCM;
}

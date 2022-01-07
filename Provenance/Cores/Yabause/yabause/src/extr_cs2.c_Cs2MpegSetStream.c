
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int CR3; int CR1; int CR2; int CR4; int HIRQ; } ;
struct TYPE_6__ {TYPE_2__ reg; int status; TYPE_1__* mpegstm; } ;
struct TYPE_4__ {int audstm; int audstmid; int audchannum; int vidstm; int vidstmid; int vidchannum; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_MPCM ;
 TYPE_3__* Cs2Area ;
 int doMPEGReport (int ) ;

void Cs2MpegSetStream(void) {
   int mssnext = (Cs2Area->reg.CR3 >> 8);

   if (mssnext == 0)
   {

      Cs2Area->mpegstm[0].audstm = Cs2Area->reg.CR1 & 0xFF;
      Cs2Area->mpegstm[0].audstmid = Cs2Area->reg.CR2 >> 8;
      Cs2Area->mpegstm[0].audchannum = Cs2Area->reg.CR2 & 0xFF;
      Cs2Area->mpegstm[0].vidstm = Cs2Area->reg.CR3 & 0xFF;
      Cs2Area->mpegstm[0].vidstmid = Cs2Area->reg.CR4 >> 8;
      Cs2Area->mpegstm[0].vidchannum = Cs2Area->reg.CR4 & 0xFF;
   }
   else
   {

      Cs2Area->mpegstm[1].audstm = Cs2Area->reg.CR1 & 0xFF;
      Cs2Area->mpegstm[1].audstmid = Cs2Area->reg.CR2 >> 8;
      Cs2Area->mpegstm[1].audchannum = Cs2Area->reg.CR2 & 0xFF;
      Cs2Area->mpegstm[1].vidstm = Cs2Area->reg.CR3 & 0xFF;
      Cs2Area->mpegstm[1].vidstmid = Cs2Area->reg.CR4 >> 8;
      Cs2Area->mpegstm[1].vidchannum = Cs2Area->reg.CR4 & 0xFF;
   }

   doMPEGReport(Cs2Area->status);
   Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_MPCM;
}

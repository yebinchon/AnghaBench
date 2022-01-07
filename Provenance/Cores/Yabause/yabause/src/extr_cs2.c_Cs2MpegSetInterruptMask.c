
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CR1; int CR2; int HIRQ; } ;
struct TYPE_4__ {int mpegintmask; TYPE_1__ reg; int status; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_MPCM ;
 TYPE_2__* Cs2Area ;
 int doMPEGReport (int ) ;

void Cs2MpegSetInterruptMask(void) {
   Cs2Area->mpegintmask = ((Cs2Area->reg.CR1 & 0xFF) << 16) | Cs2Area->reg.CR2;

   doMPEGReport(Cs2Area->status);
   Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_MPCM;
}

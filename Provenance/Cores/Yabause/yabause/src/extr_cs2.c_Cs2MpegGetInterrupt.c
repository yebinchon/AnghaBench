
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef void* u16 ;
struct TYPE_3__ {int HIRQ; scalar_t__ CR4; scalar_t__ CR3; void* CR2; void* CR1; } ;
struct TYPE_4__ {int mpegintmask; int status; TYPE_1__ reg; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_MPCM ;
 TYPE_2__* Cs2Area ;

void Cs2MpegGetInterrupt(void) {
   u32 mgiworkinterrupt;


   mgiworkinterrupt = 0;


   mgiworkinterrupt &= Cs2Area->mpegintmask;

   Cs2Area->reg.CR1 = (u16)((Cs2Area->status << 8) | ((mgiworkinterrupt >> 16) & 0xFF));
   Cs2Area->reg.CR2 = (u16) mgiworkinterrupt;
   Cs2Area->reg.CR3 = 0;
   Cs2Area->reg.CR4 = 0;
   Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_MPCM;
}

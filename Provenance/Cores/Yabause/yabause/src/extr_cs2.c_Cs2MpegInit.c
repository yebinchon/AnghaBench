
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CR1; int CR2; int HIRQ; scalar_t__ CR4; scalar_t__ CR3; } ;
struct TYPE_4__ {int status; TYPE_1__ reg; scalar_t__ mpgauth; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_MPCM ;
 int CDB_HIRQ_MPED ;
 int CDB_HIRQ_MPST ;
 TYPE_2__* Cs2Area ;

void Cs2MpegInit(void) {

  if (Cs2Area->mpgauth)
     Cs2Area->reg.CR1 = Cs2Area->status << 8;
  else
     Cs2Area->reg.CR1 = 0xFF00;


  if (Cs2Area->reg.CR2 == 0x0001)
     Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_MPCM | CDB_HIRQ_MPED | CDB_HIRQ_MPST;
  else
     Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_MPED | CDB_HIRQ_MPST;

  Cs2Area->reg.CR2 = 0;
  Cs2Area->reg.CR3 = 0;
  Cs2Area->reg.CR4 = 0;


}

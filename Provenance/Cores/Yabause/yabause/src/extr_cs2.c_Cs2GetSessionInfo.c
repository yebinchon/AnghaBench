
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_3__ {int CR1; int CR3; int CR4; int HIRQ; scalar_t__ CR2; } ;
struct TYPE_4__ {int* TOC; int status; TYPE_1__ reg; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_STAT_PAUSE ;
 TYPE_2__* Cs2Area ;

void Cs2GetSessionInfo(void) {

  switch (Cs2Area->reg.CR1 & 0xFF) {
    case 0:
            Cs2Area->reg.CR3 = (u16)(0x0100 | ((Cs2Area->TOC[101] & 0xFF0000) >> 16));
            Cs2Area->reg.CR4 = (u16)Cs2Area->TOC[101];
            break;
    case 1:
            Cs2Area->reg.CR3 = 0x0100;
            Cs2Area->reg.CR4 = 0;
            break;
    default:
            Cs2Area->reg.CR3 = 0xFFFF;
            Cs2Area->reg.CR4 = 0xFFFF;
            break;
  }

  Cs2Area->status = CDB_STAT_PAUSE;
  Cs2Area->reg.CR1 = Cs2Area->status << 8;
  Cs2Area->reg.CR2 = 0;

  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK;
}

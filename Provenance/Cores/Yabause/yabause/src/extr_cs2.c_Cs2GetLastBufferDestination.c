
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CR1; int CR3; int HIRQ; scalar_t__ CR4; scalar_t__ CR2; } ;
struct TYPE_4__ {int status; int lastbuffer; TYPE_1__ reg; } ;


 int CDB_HIRQ_CMOK ;
 TYPE_2__* Cs2Area ;

void Cs2GetLastBufferDestination(void) {
  Cs2Area->reg.CR1 = (Cs2Area->status << 8);
  Cs2Area->reg.CR2 = 0;
  Cs2Area->reg.CR3 = Cs2Area->lastbuffer << 8;
  Cs2Area->reg.CR4 = 0;
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK;
}

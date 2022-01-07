
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int CR1; int CR3; int HIRQ; int CR4; scalar_t__ CR2; } ;
struct TYPE_4__ {int status; TYPE_1__ reg; scalar_t__ blockfreespace; } ;


 int CDB_HIRQ_CMOK ;
 TYPE_2__* Cs2Area ;
 int MAX_BLOCKS ;
 int MAX_SELECTORS ;

void Cs2GetBufferSize(void) {
  Cs2Area->reg.CR1 = Cs2Area->status << 8;
  Cs2Area->reg.CR2 = (u16)Cs2Area->blockfreespace;
  Cs2Area->reg.CR3 = MAX_SELECTORS << 8;
  Cs2Area->reg.CR4 = MAX_BLOCKS;
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK;
}

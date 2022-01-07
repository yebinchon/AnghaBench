
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_3__ {int HIRQ; scalar_t__ CR4; scalar_t__ CR3; void* CR2; void* CR1; } ;
struct TYPE_4__ {int status; int calcsize; TYPE_1__ reg; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_ESEL ;
 TYPE_2__* Cs2Area ;

void Cs2GetActualSize(void) {
  Cs2Area->reg.CR1 = (u16)((Cs2Area->status << 8) | ((Cs2Area->calcsize >> 16) & 0xFF));
  Cs2Area->reg.CR2 = (u16)Cs2Area->calcsize;
  Cs2Area->reg.CR3 = 0;
  Cs2Area->reg.CR4 = 0;
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_ESEL;
}

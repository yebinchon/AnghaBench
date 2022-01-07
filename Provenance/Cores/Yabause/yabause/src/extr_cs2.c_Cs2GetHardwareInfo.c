
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CR1; int CR2; int CR3; int CR4; int HIRQ; } ;
struct TYPE_4__ {int status; TYPE_1__ reg; scalar_t__ mpgauth; scalar_t__ isdiskchanged; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_STAT_NODISC ;
 int CDB_STAT_OPEN ;
 TYPE_2__* Cs2Area ;

void Cs2GetHardwareInfo(void) {
  if ((Cs2Area->status & 0xF) != CDB_STAT_OPEN && (Cs2Area->status & 0xF) != CDB_STAT_NODISC)
     Cs2Area->isdiskchanged = 0;

  Cs2Area->reg.CR1 = Cs2Area->status << 8;

  Cs2Area->reg.CR2 = 0x0201;


  if (Cs2Area->mpgauth)
     Cs2Area->reg.CR3 = 0x1;
  else
     Cs2Area->reg.CR3 = 0;


  Cs2Area->reg.CR4 = 0x0400;
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HIRQ; } ;
struct TYPE_4__ {TYPE_1__ reg; int status; } ;


 int CDB_HIRQ_CMOK ;
 TYPE_2__* Cs2Area ;
 int doCDReport (int ) ;

void Cs2GetStatus(void) {
  doCDReport(Cs2Area->status);
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK;
}

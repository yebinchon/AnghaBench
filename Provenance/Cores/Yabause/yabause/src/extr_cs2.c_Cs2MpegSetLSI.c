
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HIRQ; } ;
struct TYPE_4__ {TYPE_1__ reg; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_MPCM ;
 TYPE_2__* Cs2Area ;

void Cs2MpegSetLSI(void) {

   Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_MPCM;
}

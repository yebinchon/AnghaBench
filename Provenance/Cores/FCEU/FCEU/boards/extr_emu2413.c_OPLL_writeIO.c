
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int adr; } ;
typedef TYPE_1__ OPLL ;


 int OPLL_writeReg (TYPE_1__*,int,int) ;

void OPLL_writeIO(OPLL * opll, uint32 adr, uint32 val) {
 if (adr & 1)
  OPLL_writeReg(opll, opll->adr, val);
 else
  opll->adr = val;
}

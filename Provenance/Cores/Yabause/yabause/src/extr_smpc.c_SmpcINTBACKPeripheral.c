
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int offset; int * data; } ;
struct TYPE_6__ {TYPE_1__ port2; TYPE_1__ port1; scalar_t__ firstPeri; } ;
struct TYPE_5__ {int SR; int* IREG; TYPE_1__* OREG; } ;
typedef int PortData_struct ;


 scalar_t__ LagFrameFlag ;
 int PORTDATA1 ;
 int PORTDATA2 ;
 int PerFlush (int *) ;
 TYPE_3__* SmpcInternalVars ;
 TYPE_2__* SmpcRegs ;
 int memcpy (TYPE_1__*,int *,int) ;

__attribute__((used)) static void SmpcINTBACKPeripheral(void) {
  int oregoffset;
  PortData_struct *port1, *port2;

  if (SmpcInternalVars->firstPeri)
    SmpcRegs->SR = 0xC0 | (SmpcRegs->IREG[1] >> 4);
  else
    SmpcRegs->SR = 0x80 | (SmpcRegs->IREG[1] >> 4);

  SmpcInternalVars->firstPeri = 0;
  oregoffset=0;

  if (SmpcInternalVars->port1.size == 0 && SmpcInternalVars->port2.size == 0)
  {

     port1 = &PORTDATA1;
     port2 = &PORTDATA2;
     memcpy(&SmpcInternalVars->port1, port1, sizeof(PortData_struct));
     memcpy(&SmpcInternalVars->port2, port2, sizeof(PortData_struct));
     PerFlush(&PORTDATA1);
     PerFlush(&PORTDATA2);
     SmpcInternalVars->port1.offset = 0;
     SmpcInternalVars->port2.offset = 0;
     LagFrameFlag=0;
  }


  if (SmpcInternalVars->port1.size > 0)
  {
     if ((SmpcInternalVars->port1.size-SmpcInternalVars->port1.offset) < 32)
     {
        memcpy(SmpcRegs->OREG, SmpcInternalVars->port1.data+SmpcInternalVars->port1.offset, SmpcInternalVars->port1.size-SmpcInternalVars->port1.offset);
        oregoffset += SmpcInternalVars->port1.size-SmpcInternalVars->port1.offset;
        SmpcInternalVars->port1.size = 0;
     }
     else
     {
        memcpy(SmpcRegs->OREG, SmpcInternalVars->port1.data, 32);
        oregoffset += 32;
        SmpcInternalVars->port1.offset += 32;
     }
  }

  if (SmpcInternalVars->port2.size > 0 && oregoffset < 32)
  {
     if ((SmpcInternalVars->port2.size-SmpcInternalVars->port2.offset) < (32 - oregoffset))
     {
        memcpy(SmpcRegs->OREG + oregoffset, SmpcInternalVars->port2.data+SmpcInternalVars->port2.offset, SmpcInternalVars->port2.size-SmpcInternalVars->port2.offset);
        SmpcInternalVars->port2.size = 0;
     }
     else
     {
        memcpy(SmpcRegs->OREG + oregoffset, SmpcInternalVars->port2.data, 32 - oregoffset);
        SmpcInternalVars->port2.offset += 32 - oregoffset;
     }
  }
}

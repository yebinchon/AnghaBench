
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {unsigned int NumRegs; TYPE_1__* Desc; scalar_t__ DiffLists; } ;
struct TYPE_5__ {scalar_t__ SuperRegs; } ;
typedef TYPE_2__ MCRegisterInfo ;
typedef int MCRegisterClass ;
typedef int MCPhysReg ;
typedef int DiffListIterator ;


 int DiffListIterator_getVal (int *) ;
 int DiffListIterator_init (int *,int ,scalar_t__) ;
 scalar_t__ DiffListIterator_isValid (int *) ;
 int DiffListIterator_next (int *) ;
 scalar_t__ MCRegisterClass_contains (int const*,int) ;
 unsigned int MCRegisterInfo_getSubReg (TYPE_2__ const*,int,unsigned int) ;

unsigned MCRegisterInfo_getMatchingSuperReg(const MCRegisterInfo *RI, unsigned Reg, unsigned SubIdx, const MCRegisterClass *RC)
{
 DiffListIterator iter;

 if (Reg >= RI->NumRegs) {
  return 0;
 }

 DiffListIterator_init(&iter, (MCPhysReg)Reg, RI->DiffLists + RI->Desc[Reg].SuperRegs);
 DiffListIterator_next(&iter);

 while(DiffListIterator_isValid(&iter)) {
  uint16_t val = DiffListIterator_getVal(&iter);
  if (MCRegisterClass_contains(RC, val) && Reg == MCRegisterInfo_getSubReg(RI, val, SubIdx))
   return val;

  DiffListIterator_next(&iter);
 }

 return 0;
}

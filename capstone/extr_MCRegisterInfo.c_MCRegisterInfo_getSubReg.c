
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint16_t ;
struct TYPE_5__ {unsigned int* SubRegIndices; TYPE_1__* Desc; scalar_t__ DiffLists; } ;
struct TYPE_4__ {int SubRegIndices; scalar_t__ SubRegs; } ;
typedef TYPE_2__ MCRegisterInfo ;
typedef int MCPhysReg ;
typedef int DiffListIterator ;


 int DiffListIterator_getVal (int *) ;
 int DiffListIterator_init (int *,int ,scalar_t__) ;
 scalar_t__ DiffListIterator_isValid (int *) ;
 int DiffListIterator_next (int *) ;

unsigned MCRegisterInfo_getSubReg(const MCRegisterInfo *RI, unsigned Reg, unsigned Idx)
{
 DiffListIterator iter;
 const uint16_t *SRI = RI->SubRegIndices + RI->Desc[Reg].SubRegIndices;

 DiffListIterator_init(&iter, (MCPhysReg)Reg, RI->DiffLists + RI->Desc[Reg].SubRegs);
 DiffListIterator_next(&iter);

 while(DiffListIterator_isValid(&iter)) {
  if (*SRI == Idx)
   return DiffListIterator_getVal(&iter);
  DiffListIterator_next(&iter);
  ++SRI;
 }

 return 0;
}

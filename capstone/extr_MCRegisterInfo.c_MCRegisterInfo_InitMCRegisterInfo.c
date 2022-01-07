
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {unsigned int NumRegs; unsigned int RAReg; unsigned int PCReg; char const* RegStrings; unsigned int NumClasses; unsigned int NumRegUnits; unsigned int NumSubRegIndices; int const* RegEncodingTable; int const* SubRegIndices; int ** RegUnitRoots; int const* DiffLists; int const* Classes; int const* Desc; } ;
typedef TYPE_1__ MCRegisterInfo ;
typedef int MCRegisterDesc ;
typedef int MCRegisterClass ;
typedef int MCPhysReg ;



void MCRegisterInfo_InitMCRegisterInfo(MCRegisterInfo *RI,
  const MCRegisterDesc *D, unsigned NR,
  unsigned RA, unsigned PC,
  const MCRegisterClass *C, unsigned NC,
  uint16_t (*RURoots)[2], unsigned NRU,
  const MCPhysReg *DL,
  const char *Strings,
  const uint16_t *SubIndices, unsigned NumIndices,
  const uint16_t *RET)
{
 RI->Desc = D;
 RI->NumRegs = NR;
 RI->RAReg = RA;
 RI->PCReg = PC;
 RI->Classes = C;
 RI->DiffLists = DL;
 RI->RegStrings = Strings;
 RI->NumClasses = NC;
 RI->RegUnitRoots = RURoots;
 RI->NumRegUnits = NRU;
 RI->SubRegIndices = SubIndices;
 RI->NumSubRegIndices = NumIndices;
 RI->RegEncodingTable = RET;
}

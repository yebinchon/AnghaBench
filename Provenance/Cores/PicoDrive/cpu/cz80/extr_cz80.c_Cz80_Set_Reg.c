
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t BasePC; size_t* Fetch; size_t PC; size_t HaltState; size_t IRQState; int * OPFetch; int OPBase; } ;
typedef TYPE_1__ cz80_struc ;
typedef size_t UINT32 ;
typedef int INT32 ;
 size_t CZ80_FETCH_SFT ;
 size_t zAF ;
 size_t zAF2 ;
 size_t zBC ;
 size_t zBC2 ;
 size_t zDE ;
 size_t zDE2 ;
 size_t zHL ;
 size_t zHL2 ;
 size_t zI ;
 int zIFF1 ;
 int zIFF2 ;
 size_t zIM ;
 size_t zIX ;
 size_t zIY ;
 size_t zR ;
 size_t zSP ;

void Cz80_Set_Reg(cz80_struc *CPU, INT32 regnum, UINT32 val)
{
 switch (regnum)
 {
 case 130:
  CPU->BasePC = CPU->Fetch[val >> CZ80_FETCH_SFT];



  CPU->PC = val + CPU->BasePC;
  break;

 case 128: zSP = val; break;
 case 146: zAF = val; break;
 case 144: zBC = val; break;
 case 142: zDE = val; break;
 case 139: zHL = val; break;
 case 132: zIX = val; break;
 case 131: zIY = val; break;
 case 145: zAF2 = val; break;
 case 143: zBC2 = val; break;
 case 141: zDE2 = val; break;
 case 138: zHL2 = val; break;
 case 129: zR = val; break;
 case 137: zI = val; break;
 case 134: zIM = val; break;
 case 136: zIFF1 = val ? (1 << 2) : 0; break;
 case 135: zIFF2 = val ? (1 << 2) : 0; break;
 case 140: CPU->HaltState = val; break;
 case 133: CPU->IRQState = val; break;
 default: break;
 }
}

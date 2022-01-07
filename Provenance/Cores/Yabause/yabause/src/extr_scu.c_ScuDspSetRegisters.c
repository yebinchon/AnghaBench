
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_16__ {int all; } ;
struct TYPE_27__ {int all; } ;
struct TYPE_25__ {int all; } ;
struct TYPE_23__ {int all; } ;
struct TYPE_20__ {int P; } ;
struct TYPE_21__ {TYPE_2__ part; int all; } ;
struct TYPE_17__ {TYPE_11__ MUL; TYPE_9__ ALU; TYPE_7__ P; TYPE_5__ AC; int WA0; int RA0; int RY; int RX; int CT; int DataRamReadAddress; int DataRamPage; int delayed; int jmpaddr; int LOP; int TOP; TYPE_3__ ProgControlPort; int MD; int ProgramRam; } ;
typedef TYPE_12__ scudspregs_struct ;
struct TYPE_26__ {int all; } ;
struct TYPE_24__ {int all; } ;
struct TYPE_22__ {int all; } ;
struct TYPE_19__ {int all; } ;
struct TYPE_15__ {int all; } ;
struct TYPE_18__ {TYPE_10__ MUL; TYPE_8__ ALU; TYPE_6__ P; TYPE_4__ AC; int WA0; int RA0; int RY; int RX; int CT; int DataRamReadAddress; int DataRamPage; int delayed; int jmpaddr; int LOP; int TOP; int PC; TYPE_1__ ProgControlPort; int MD; int ProgramRam; } ;


 TYPE_14__* ScuDsp ;
 int memcpy (int ,int ,int) ;

void ScuDspSetRegisters(scudspregs_struct *regs) {
   if (regs != ((void*)0)) {
      memcpy(ScuDsp->ProgramRam, regs->ProgramRam, sizeof(u32) * 256);
      memcpy(ScuDsp->MD, regs->MD, sizeof(u32) * 64 * 4);

      ScuDsp->ProgControlPort.all = regs->ProgControlPort.all;
      ScuDsp->PC = regs->ProgControlPort.part.P;
      ScuDsp->TOP = regs->TOP;
      ScuDsp->LOP = regs->LOP;
      ScuDsp->jmpaddr = regs->jmpaddr;
      ScuDsp->delayed = regs->delayed;
      ScuDsp->DataRamPage = regs->DataRamPage;
      ScuDsp->DataRamReadAddress = regs->DataRamReadAddress;
      memcpy(ScuDsp->CT, regs->CT, sizeof(u8) * 4);
      ScuDsp->RX = regs->RX;
      ScuDsp->RY = regs->RY;
      ScuDsp->RA0 = regs->RA0;
      ScuDsp->WA0 = regs->WA0;

      ScuDsp->AC.all = regs->AC.all;
      ScuDsp->P.all = regs->P.all;
      ScuDsp->ALU.all = regs->ALU.all;
      ScuDsp->MUL.all = regs->MUL.all;
   }
}

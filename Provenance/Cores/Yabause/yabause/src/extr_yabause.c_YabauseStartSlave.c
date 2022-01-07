
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int VBR; scalar_t__* R; scalar_t__ PC; } ;
struct TYPE_11__ {TYPE_4__ regs; } ;
struct TYPE_10__ {int IsSSH2Running; scalar_t__ emulatebios; } ;


 scalar_t__ Cs2GetSlaveStackAdress () ;
 TYPE_2__* CurrentSH2 ;
 TYPE_2__* MSH2 ;
 scalar_t__ MappedMemoryReadLong (int) ;
 int MappedMemoryWriteLong (int,int) ;
 int MappedMemoryWriteWord (int,int) ;
 int SH2GetRegisters (TYPE_2__*,TYPE_4__*) ;
 int SH2PowerOn (TYPE_2__*) ;
 int SH2SetRegisters (TYPE_2__*,TYPE_4__*) ;
 TYPE_2__* SSH2 ;
 TYPE_1__ yabsys ;

void YabauseStartSlave(void) {
   if (yabsys.emulatebios)
   {
      CurrentSH2 = SSH2;
      MappedMemoryWriteLong(0xFFFFFFE0, 0xA55A03F1);
      MappedMemoryWriteLong(0xFFFFFFE4, 0xA55A00FC);
      MappedMemoryWriteLong(0xFFFFFFE8, 0xA55A5555);
      MappedMemoryWriteLong(0xFFFFFFEC, 0xA55A0070);

      MappedMemoryWriteWord(0xFFFFFEE0, 0x0000);
      MappedMemoryWriteWord(0xFFFFFEE2, 0x0000);
      MappedMemoryWriteWord(0xFFFFFE60, 0x0F00);
      MappedMemoryWriteWord(0xFFFFFE62, 0x6061);
      MappedMemoryWriteWord(0xFFFFFE64, 0x6263);
      MappedMemoryWriteWord(0xFFFFFE66, 0x6465);
      MappedMemoryWriteWord(0xFFFFFE68, 0x6600);
      MappedMemoryWriteWord(0xFFFFFEE4, 0x6869);
      MappedMemoryWriteLong(0xFFFFFFA8, 0x0000006C);
      MappedMemoryWriteLong(0xFFFFFFA0, 0x0000006D);
      MappedMemoryWriteLong(0xFFFFFF0C, 0x0000006E);
      MappedMemoryWriteLong(0xFFFFFE10, 0x00000081);
      CurrentSH2 = MSH2;

      SH2GetRegisters(SSH2, &SSH2->regs);
      SSH2->regs.R[15] = Cs2GetSlaveStackAdress();
      SSH2->regs.VBR = 0x06000400;
      SSH2->regs.PC = MappedMemoryReadLong(0x06000250);
      if (MappedMemoryReadLong(0x060002AC) != 0)
         SSH2->regs.R[15] = MappedMemoryReadLong(0x060002AC);
      SH2SetRegisters(SSH2, &SSH2->regs);
   }
   else
      SH2PowerOn(SSH2);

   yabsys.IsSSH2Running = 1;
}

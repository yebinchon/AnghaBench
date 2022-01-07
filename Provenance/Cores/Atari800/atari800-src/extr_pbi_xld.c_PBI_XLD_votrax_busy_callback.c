
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_GenerateIRQ () ;
 int D (int ) ;
 int PBI_IRQ ;
 int POKEY_IRQEN ;
 int POKEY_OFFSET_IRQEN ;
 int POKEY_PutByte (int ,int ) ;
 int VOICE_MASK ;
 int printf (char*) ;
 int votrax_latch ;

void PBI_XLD_votrax_busy_callback(int busy_status)
{
 if (!busy_status && (votrax_latch & 0x80)){

  D(printf("votrax IRQ generated\n"));
  CPU_GenerateIRQ();
  PBI_IRQ |= VOICE_MASK;
 }
 else if (busy_status && (PBI_IRQ & VOICE_MASK)) {

  PBI_IRQ &= ~VOICE_MASK;

  POKEY_PutByte(POKEY_OFFSET_IRQEN, POKEY_IRQEN);
 }
}

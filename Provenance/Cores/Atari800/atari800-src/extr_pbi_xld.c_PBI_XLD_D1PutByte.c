
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int CPU_GenerateIRQ () ;
 scalar_t__ CommandIndex ;
 int D (int ) ;
 scalar_t__ DataIndex ;
 int ExpectedBytes ;
 int PBI_IRQ ;
 int PBI_XLD_votrax_busy_callback (int ) ;
 scalar_t__ PIO_CommandFrame ;
 int PIO_PutByte (int) ;
 scalar_t__ PIO_ReadFrame ;
 scalar_t__ PIO_StatusRead ;
 int POKEY_IRQEN ;
 int POKEY_OFFSET_IRQEN ;
 int POKEY_PutByte (int ,int ) ;
 int TRUE ;
 scalar_t__ TransferStatus ;
 int VOICE_MASK ;
 int VOTRAXSND_PutByte (int) ;
 scalar_t__ VOTRAXSND_busy ;
 int Votrax_GetStatus () ;
 int modem_latch ;
 int printf (char*,...) ;
 int votrax_latch ;
 scalar_t__ xld_d_enabled ;

void PBI_XLD_D1PutByte(UWORD addr, UBYTE byte)
{
 if ((addr & ~3) == 0xd104) {

  D(printf("votrax write:%4x\n",addr));
  if (VOTRAXSND_busy) {
   PBI_XLD_votrax_busy_callback(TRUE);
  }
  VOTRAXSND_PutByte(votrax_latch & 0x3f);

 }
 else if ((addr & ~3) == 0xd100 ) {

  if ( !(votrax_latch & 0x80) && (byte & 0x80) && (!Votrax_GetStatus())) {

   D(printf("votrax IRQ generated: IRQ enable changed and idle\n"));
   CPU_GenerateIRQ();
   PBI_IRQ |= VOICE_MASK;
  } else if ((votrax_latch & 0x80) && !(byte & 0x80) ){

   PBI_IRQ &= ~VOICE_MASK;

   POKEY_PutByte(POKEY_OFFSET_IRQEN, POKEY_IRQEN);
  }
  votrax_latch = byte;
 }
 else if (addr == 0xd108) {

  D(printf("XLD 8040 T1:%d loop-back:%d modem+phone:%d offhook(modem relay):%d phaudio:%d DTMF:%d O/!A(originate/answer):%d SQT(squelch transmitter):%d\n",!!(byte&0x80),!!(byte&0x40),!!(byte&0x20),!!(byte&0x10),!!(byte&0x08),!!(byte&0x04),!!(byte&0x02),!!(byte&0x01)));
  modem_latch = byte;
 }
 else if (xld_d_enabled && addr == 0xd110) {

  D(printf("d110: disk output byte:%2x\n",byte));
  if (modem_latch & 0x80){

   CommandIndex = 0;
   DataIndex = 0;
   TransferStatus = PIO_CommandFrame;
   ExpectedBytes = 5;
   D(printf("command frame expected\n"));
  }
  else if (TransferStatus == PIO_StatusRead || TransferStatus == PIO_ReadFrame) {
   D(printf("read ack strobe\n"));
  }
  else {
   PIO_PutByte(byte);
  }
 }
}

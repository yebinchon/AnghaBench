
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CASSETTE_GetByte () ;
 int Command_Frame () ;
 int* DataBuffer ;
 int DataIndex ;
 int ExpectedBytes ;
 int Log_print (char*) ;
 int* POKEY_AUDF ;
 size_t POKEY_CHAN3 ;
 int POKEY_DELAYED_SERIN_IRQ ;
 int SIO_ACK_INTERVAL ;



 int SIO_NoFrame ;

 int SIO_SERIN_INTERVAL ;

 int TransferStatus ;

int SIO_GetByte(void)
{
 int byte = 0;

 switch (TransferStatus) {
 case 128:
  byte = Command_Frame();
  break;
 case 130:
  TransferStatus = 129;
  POKEY_DELAYED_SERIN_IRQ = SIO_SERIN_INTERVAL << 3;

 case 129:
  if (DataIndex < ExpectedBytes) {
   byte = DataBuffer[DataIndex++];
   if (DataIndex >= ExpectedBytes) {
    TransferStatus = SIO_NoFrame;
   }
   else {

    POKEY_DELAYED_SERIN_IRQ = (DataIndex == 1) ? SIO_SERIN_INTERVAL
     : ((SIO_SERIN_INTERVAL * POKEY_AUDF[POKEY_CHAN3] - 1) / 0x28 + 1);
   }
  }
  else {
   Log_print("Invalid read frame!");
   TransferStatus = SIO_NoFrame;
  }
  break;
 case 131:
  if (DataIndex < ExpectedBytes) {
   byte = DataBuffer[DataIndex++];
   if (DataIndex >= ExpectedBytes) {
    TransferStatus = SIO_NoFrame;
   }
   else {
    if (DataIndex == 0)
     POKEY_DELAYED_SERIN_IRQ = SIO_SERIN_INTERVAL + SIO_ACK_INTERVAL;
    else
     POKEY_DELAYED_SERIN_IRQ = SIO_SERIN_INTERVAL;
   }
  }
  else {
   Log_print("Invalid read frame!");
   TransferStatus = SIO_NoFrame;
  }
  break;
 case 132:
  byte = CASSETTE_GetByte();
  break;
 default:
  break;
 }
 return byte;
}

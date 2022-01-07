
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CommandIndex ;
 scalar_t__ DataIndex ;
 int ExpectedBytes ;
 int Log_print (char*,scalar_t__) ;
 scalar_t__ SIO_CommandFrame ;
 scalar_t__ SIO_NoFrame ;
 scalar_t__ SIO_ReadFrame ;
 scalar_t__ SIO_StatusRead ;
 scalar_t__ TransferStatus ;

void SIO_SwitchCommandFrame(int onoff)
{
 if (onoff) {
  if (TransferStatus != SIO_NoFrame)
   Log_print("Unexpected command frame at state %x.", TransferStatus);
  CommandIndex = 0;
  DataIndex = 0;
  ExpectedBytes = 5;
  TransferStatus = SIO_CommandFrame;
 }
 else {
  if (TransferStatus != SIO_StatusRead && TransferStatus != SIO_NoFrame &&
   TransferStatus != SIO_ReadFrame) {
   if (!(TransferStatus == SIO_CommandFrame && CommandIndex == 0))
    Log_print("Command frame %02x unfinished.", TransferStatus);
   TransferStatus = SIO_NoFrame;
  }
  CommandIndex = 0;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CASSETTE_TapeMotor (int) ;
 scalar_t__ SIO_CasReadWrite ;
 scalar_t__ SIO_NoFrame ;
 int SIO_last_drive ;
 int SIO_last_op_time ;
 scalar_t__ TransferStatus ;

void SIO_TapeMotor(int onoff)
{
 CASSETTE_TapeMotor(onoff);
 if (onoff) {


  if (TransferStatus == SIO_NoFrame || TransferStatus == SIO_CasReadWrite)
   TransferStatus = SIO_CasReadWrite;
  SIO_last_drive = 0x60;
  SIO_last_op_time = 0x10;
 }
 else {

  if (TransferStatus == SIO_CasReadWrite)
   TransferStatus = SIO_NoFrame;
  SIO_last_op_time = 0;
 }
}

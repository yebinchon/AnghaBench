
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D (int ) ;
 int* DataBuffer ;
 int DataIndex ;
 int ExpectedBytes ;
 int Log_print (char*) ;
 int PIO_Command_Frame () ;


 int PIO_NoFrame ;


 int TransferStatus ;
 int printf (char*,int,...) ;

__attribute__((used)) static int PIO_GetByte(void)
{
 int byte = 0;
 D(printf("PIO_GetByte TransferStatus:%d\n",TransferStatus));

 switch (TransferStatus) {
 case 128:
  byte = PIO_Command_Frame();
  break;
 case 130:
  TransferStatus = 129;


 case 129:
  D(printf("ReadFrame: DataIndex:%d ExpectedBytes:%d\n",DataIndex,ExpectedBytes));
  if (DataIndex < ExpectedBytes) {
   byte = DataBuffer[DataIndex++];
   if (DataIndex >= ExpectedBytes) {
    TransferStatus = PIO_NoFrame;
   }





  }
  else {
   Log_print("Invalid read frame!");
   TransferStatus = PIO_NoFrame;
  }
  break;
 case 131:
  if (DataIndex < ExpectedBytes) {
   byte = DataBuffer[DataIndex++];
   if (DataIndex >= ExpectedBytes) {
    TransferStatus = PIO_NoFrame;
   }






  }
  else {
   Log_print("Invalid read frame!");
   TransferStatus = PIO_NoFrame;
  }
  break;
 default:
  break;
 }
 return byte;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UBYTE ;


 int* CommandFrame ;
 int CommandIndex ;
 int D (int ) ;
 char* DataBuffer ;
 int DataIndex ;
 int ExpectedBytes ;
 int Log_print (char*) ;

 int PIO_FinalStatus ;
 int PIO_NoFrame ;
 int PIO_StatusRead ;

 char SIO_ChkSum (char*,int ) ;
 int TransferStatus ;
 char WriteSectorBack () ;
 int printf (char*,...) ;

__attribute__((used)) static void PIO_PutByte(int byte)
{
 D(printf("TransferStatus:%d\n",TransferStatus));
 switch (TransferStatus) {
 case 129:
  D(printf("CommandIndex:%d ExpectedBytes:%d\n",CommandIndex,ExpectedBytes));
  if (CommandIndex < ExpectedBytes) {
   CommandFrame[CommandIndex++] = byte;
   if (CommandIndex >= ExpectedBytes) {
    if (CommandFrame[0] >= 0x31 && CommandFrame[0] <= 0x38) {
     TransferStatus = PIO_StatusRead;

     D(printf("TransferStatus = PIO_StatusRead\n"));
    }
    else{
     TransferStatus = PIO_NoFrame;
     D(printf("TransferStatus = PIO_NoFrame\n"));
    }
   }
  }
  else {
   Log_print("Invalid command frame!");
   TransferStatus = PIO_NoFrame;
  }
  break;
 case 128:
  if (DataIndex < ExpectedBytes) {
   DataBuffer[DataIndex++] = byte;
   if (DataIndex >= ExpectedBytes) {
    UBYTE sum = SIO_ChkSum(DataBuffer, ExpectedBytes - 1);
    if (sum == DataBuffer[ExpectedBytes - 1]) {
     UBYTE result = WriteSectorBack();
     if (result != 0) {
      DataBuffer[0] = 'A';
      DataBuffer[1] = result;
      DataIndex = 0;
      ExpectedBytes = 2;

      TransferStatus = PIO_FinalStatus;
     }
     else
      TransferStatus = PIO_NoFrame;
    }
    else {
     DataBuffer[0] = 'E';
     DataIndex = 0;
     ExpectedBytes = 1;

     TransferStatus = PIO_FinalStatus;
    }
   }
  }
  else {
   Log_print("Invalid data frame!");
  }
  break;
 }

}

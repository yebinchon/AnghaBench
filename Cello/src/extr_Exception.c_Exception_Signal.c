
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DivisionByZeroError ;
 int IllegalInstructionError ;
 int ProgramAbortedError ;
 int ProgramInterruptedError ;
 int ProgramTerminationError ;






 int SegmentationError ;
 int throw (int ,char*) ;

__attribute__((used)) static void Exception_Signal(int sig) {
  switch(sig) {
    case 133: throw(ProgramAbortedError, "Program Aborted");
    case 132: throw(DivisionByZeroError, "Division by Zero");
    case 131: throw(IllegalInstructionError, "Illegal Instruction");
    case 130: throw(ProgramInterruptedError, "Program Interrupted");
    case 129: throw(SegmentationError, "Segmentation fault");
    case 128: throw(ProgramTerminationError, "Program Terminated");
  }
}

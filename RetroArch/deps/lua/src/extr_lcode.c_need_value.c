
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Instruction ;
typedef int FuncState ;


 scalar_t__ GET_OPCODE (int ) ;
 int NO_JUMP ;
 scalar_t__ OP_TESTSET ;
 int getjump (int *,int) ;
 int * getjumpcontrol (int *,int) ;

__attribute__((used)) static int need_value (FuncState *fs, int list) {
  for (; list != NO_JUMP; list = getjump(fs, list)) {
    Instruction i = *getjumpcontrol(fs, list);
    if (GET_OPCODE(i) != OP_TESTSET) return 1;
  }
  return 0;
}

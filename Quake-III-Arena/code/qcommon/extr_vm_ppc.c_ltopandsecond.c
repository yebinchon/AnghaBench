
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* instructionPointers; } ;


 int InstImm (int ,int,int,int) ;
 int PPC_ADDI ;
 int PPC_LWZ ;
 int PPC_STW ;
 int PPC_STWU ;
 int R_OPSTACK ;
 int R_SECOND ;
 int R_TOP ;
 int* buf ;
 int compiledOfs ;
 size_t instruction ;
 scalar_t__* jused ;
 int ltop () ;
 scalar_t__ pass ;
 int qfalse ;
 int rtopped ;
 TYPE_1__* tvm ;

__attribute__((used)) static void ltopandsecond() {
    if (pass>=0 && buf[compiledOfs-1] == (PPC_STWU | R_TOP<<21 | R_OPSTACK<<16 | 4 ) && jused[instruction]==0 ) {
 compiledOfs--;
 if (!pass) {
     tvm->instructionPointers[instruction] = compiledOfs * 4;
 }
 InstImm( PPC_LWZ, R_SECOND, R_OPSTACK, 0 );
 InstImm( PPC_ADDI, R_OPSTACK, R_OPSTACK, -4 );
    } else if (pass>=0 && buf[compiledOfs-1] == (PPC_STW | R_TOP<<21 | R_OPSTACK<<16 | 0 ) && jused[instruction]==0 ) {
 compiledOfs--;
 if (!pass) {
     tvm->instructionPointers[instruction] = compiledOfs * 4;
 }
 InstImm( PPC_LWZ, R_SECOND, R_OPSTACK, -4 );
 InstImm( PPC_ADDI, R_OPSTACK, R_OPSTACK, -8 );
    } else {
 ltop();
 InstImm( PPC_LWZ, R_SECOND, R_OPSTACK, -4 );
 InstImm( PPC_ADDI, R_OPSTACK, R_OPSTACK, -8 );
    }
    rtopped = qfalse;
}

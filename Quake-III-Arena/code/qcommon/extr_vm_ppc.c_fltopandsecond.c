
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InstImm (int ,int ,int ,int) ;
 int PPC_ADDI ;
 int PPC_LFS ;
 int R_OPSTACK ;
 int R_SECOND ;
 int R_TOP ;
 int qfalse ;
 int rtopped ;

__attribute__((used)) static void fltopandsecond() {
 InstImm( PPC_LFS, R_TOP, R_OPSTACK, 0 );
 InstImm( PPC_LFS, R_SECOND, R_OPSTACK, -4 );
 InstImm( PPC_ADDI, R_OPSTACK, R_OPSTACK, -8 );
    rtopped = qfalse;
 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*,int) ;
 int ERR_FATAL ;
 unsigned int* buf ;
 size_t compiledOfs ;

__attribute__((used)) static void InstImmU( int opcode, int destReg, int aReg, int immediate ) {
 unsigned r;

 if ( immediate > 0xffff || immediate < 0 ) {
  Com_Error( ERR_FATAL, "VM_Compile: immediate value %i out of range", immediate );
 }
    r = opcode | ( destReg << 21 ) | ( aReg << 16 ) | ( immediate & 0xffff );
 buf[ compiledOfs ] = r;
 compiledOfs++;
}

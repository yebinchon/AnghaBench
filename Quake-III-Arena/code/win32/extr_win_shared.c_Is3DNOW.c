
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID (int,unsigned int*) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static int Is3DNOW( void )
{
 unsigned regs[4];
 char pstring[16];
 char processorString[13];


 CPUID( 0, ( unsigned int * ) pstring );
 processorString[0] = pstring[4];
 processorString[1] = pstring[5];
 processorString[2] = pstring[6];
 processorString[3] = pstring[7];
 processorString[4] = pstring[12];
 processorString[5] = pstring[13];
 processorString[6] = pstring[14];
 processorString[7] = pstring[15];
 processorString[8] = pstring[8];
 processorString[9] = pstring[9];
 processorString[10] = pstring[10];
 processorString[11] = pstring[11];
 processorString[12] = 0;






 CPUID( 0x80000000, regs );
 if ( regs[0] < 0x80000000 )
  return qfalse;


 CPUID( 0x80000001, regs );
 if ( regs[3] & ( 1 << 31 ) )
  return qtrue;

 return qfalse;
}

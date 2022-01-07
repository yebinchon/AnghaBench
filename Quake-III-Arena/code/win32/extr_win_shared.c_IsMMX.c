
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID (int,unsigned int*) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static int IsMMX( void )
{
 unsigned regs[4];


 CPUID( 1, regs );


 if ( regs[3] & ( 1 << 23 ) )
  return qtrue;
 return qfalse;
}

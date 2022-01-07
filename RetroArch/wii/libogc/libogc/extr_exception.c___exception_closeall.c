
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 int MSR_EE ;
 int MSR_FP ;
 int MSR_RI ;
 scalar_t__ NUM_EXCEPTIONS ;
 int __exception_close (scalar_t__) ;
 int mfmsr () ;
 int mtmsr (int) ;

void __exception_closeall()
{
 s32 i;

 mtmsr(mfmsr()&~MSR_EE);
 mtmsr(mfmsr()|(MSR_FP|MSR_RI));

 for(i=0;i<NUM_EXCEPTIONS;i++) {
  __exception_close(i);
 }
}

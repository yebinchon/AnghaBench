
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 scalar_t__ EX_DEC ;
 scalar_t__ EX_FP ;
 scalar_t__ EX_INT ;
 int MSR_RI ;
 scalar_t__ NUM_EXCEPTIONS ;
 int __exception_load (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int __exception_sethandler (scalar_t__,int ) ;
 int dec_exceptionhandler ;
 int default_exceptionhandler ;
 scalar_t__ exceptionhandler_end ;
 int exceptionhandler_patch ;
 scalar_t__ exceptionhandler_start ;
 int fpu_exceptionhandler ;
 int irq_exceptionhandler ;
 int mfmsr () ;
 int mtmsr (int) ;

void __exception_init()
{
 s32 i;

 for(i=0;i<NUM_EXCEPTIONS;i++) {

  __exception_load(i,exceptionhandler_start,(exceptionhandler_end-exceptionhandler_start),exceptionhandler_patch);

  __exception_sethandler(i,default_exceptionhandler);
 }
 __exception_sethandler(EX_FP,fpu_exceptionhandler);
 __exception_sethandler(EX_INT,irq_exceptionhandler);
 __exception_sethandler(EX_DEC,dec_exceptionhandler);

 mtmsr(mfmsr()|MSR_RI);
}

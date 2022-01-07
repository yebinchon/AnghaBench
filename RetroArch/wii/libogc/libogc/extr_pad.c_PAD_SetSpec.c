
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SPEC0_MakeStatus ;
 int SPEC1_MakeStatus ;
 int SPEC2_MakeStatus ;
 scalar_t__ __pad_initialized ;
 int __pad_makestatus ;
 int __pad_spec ;

void PAD_SetSpec(u32 spec)
{
 if(__pad_initialized) return;

 __pad_spec = 0;
 if(spec==0) __pad_makestatus = SPEC0_MakeStatus;
 else if(spec==1) __pad_makestatus = SPEC1_MakeStatus;
 else if(spec<6) __pad_makestatus = SPEC2_MakeStatus;

 __pad_spec = spec;
}

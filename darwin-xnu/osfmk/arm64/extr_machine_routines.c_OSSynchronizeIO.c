
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSB_SY ;
 int __builtin_arm_dsb (int ) ;

void OSSynchronizeIO(void)
{
 __builtin_arm_dsb(DSB_SY);
}

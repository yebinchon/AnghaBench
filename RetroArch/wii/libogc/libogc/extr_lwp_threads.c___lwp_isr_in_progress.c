
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mfspr (int) ;

u32 __lwp_isr_in_progress()
{
 register u32 isr_nest_level;
 isr_nest_level = mfspr(272);
 return isr_nest_level;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CPU_MODES_INTERRUPT_MASK ;
 int MSR_EE ;
 int _CPU_MSR_GET (int) ;
 int _CPU_MSR_SET (int) ;

__attribute__((used)) static inline void __lwp_msr_setlevel(u32 level)
{
 register u32 msr;
 _CPU_MSR_GET(msr);
 if(!(level&CPU_MODES_INTERRUPT_MASK))
  msr |= MSR_EE;
 else
  msr &= ~MSR_EE;
 _CPU_MSR_SET(msr);
}

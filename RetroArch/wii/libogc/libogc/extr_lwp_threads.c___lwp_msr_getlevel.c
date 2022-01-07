
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_EE ;
 int _CPU_MSR_GET (int) ;

__attribute__((used)) static inline u32 __lwp_msr_getlevel()
{
 register u32 msr;
 _CPU_MSR_GET(msr);
 if(msr&MSR_EE) return 0;
 else return 1;
}

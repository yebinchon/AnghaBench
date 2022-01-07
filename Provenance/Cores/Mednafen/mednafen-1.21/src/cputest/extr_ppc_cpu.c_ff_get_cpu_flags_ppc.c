
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ExecIFace {int (* GetCPUInfoTags ) (int ,scalar_t__*,int ) ;} ;
typedef int has_vu ;
typedef scalar_t__ ULONG ;


 int CPUTEST_FLAG_ALTIVEC ;
 int CPU_ALTIVEC ;
 int CTL_HW ;
 int CTL_MACHDEP ;
 int GCIT_VectorUnit ;
 int HW_VECTORUNIT ;
 int TAG_DONE ;
 scalar_t__ VECTORTYPE_ALTIVEC ;
 int stub1 (int ,scalar_t__*,int ) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

int ff_get_cpu_flags_ppc(void)
{
    return 0;
}

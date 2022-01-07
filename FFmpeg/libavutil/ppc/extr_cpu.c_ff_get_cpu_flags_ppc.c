
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ExecIFace {int (* GetCPUInfoTags ) (int ,scalar_t__*,int ) ;} ;
typedef int ssize_t ;
typedef int has_vu ;
typedef int buf ;
typedef scalar_t__ ULONG ;


 unsigned long AT_HWCAP ;
 unsigned long AT_HWCAP2 ;
 unsigned long AT_NULL ;
 int AV_CPU_FLAG_ALTIVEC ;
 int AV_CPU_FLAG_POWER8 ;
 int AV_CPU_FLAG_VSX ;
 int CPU_ALTIVEC ;
 int CTL_HW ;
 int CTL_MACHDEP ;
 int GCIT_VectorUnit ;
 int HW_VECTORUNIT ;
 int O_RDONLY ;
 unsigned long PPC_FEATURE2_ARCH_2_07 ;
 unsigned long PPC_FEATURE_HAS_ALTIVEC ;
 unsigned long PPC_FEATURE_HAS_VSX ;
 int PVR_CELL_PPU ;
 int PVR_G4_7400 ;
 int PVR_G5_970 ;
 int PVR_G5_970FX ;
 int PVR_G5_970GX ;
 int PVR_G5_970MP ;
 int PVR_POWER6 ;
 int PVR_POWER7 ;
 int PVR_POWER8 ;
 int TAG_DONE ;
 scalar_t__ VECTORTYPE_ALTIVEC ;
 int av_assert0 (int) ;
 int close (int) ;
 int open (char*,int ) ;
 int read (int,unsigned long*,int) ;
 int stub1 (int ,scalar_t__*,int ) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

int ff_get_cpu_flags_ppc(void)
{
    return 0;
}

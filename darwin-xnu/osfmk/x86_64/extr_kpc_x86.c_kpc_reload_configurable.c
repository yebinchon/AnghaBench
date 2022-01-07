
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CONFIGURABLE_RELOAD (int) ;
 int IA32_PERFEVTSEL_EN ;
 int IA32_PERFEVTSELx (int) ;
 int IA32_PMCx (int) ;
 int wrIA32_PERFEVTSELx (int,int) ;
 int wrIA32_PMCx (int,int ) ;

__attribute__((used)) static uint64_t
kpc_reload_configurable(int ctr)
{
 uint64_t cfg = IA32_PERFEVTSELx(ctr);


 uint64_t old = IA32_PMCx(ctr);
 wrIA32_PERFEVTSELx(ctr, cfg & ~IA32_PERFEVTSEL_EN);
 wrIA32_PMCx(ctr, CONFIGURABLE_RELOAD(ctr));
 wrIA32_PERFEVTSELx(ctr, cfg);
 return old;
}

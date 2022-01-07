
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kpcdata {int configc; unsigned long long* configv; int counterc; unsigned long long* counterv; } ;


 int BUF_DATA (int ,unsigned long long,int,unsigned long long,int) ;
 int PERF_KPC_CFG_REG ;
 int PERF_KPC_CFG_REG32 ;

__attribute__((used)) static void
kperf_kpc_log(uint32_t code, uint32_t code32, const struct kpcdata *kpcd)
{
 unsigned i;


 (void)code32;

 for (i = 0; i < ((kpcd->configc + 3) / 4); i++) {
  BUF_DATA(PERF_KPC_CFG_REG,
           kpcd->configv[0 + i * 4],
           kpcd->configv[1 + i * 4],
           kpcd->configv[2 + i * 4],
           kpcd->configv[3 + i * 4]);
 }


 for (i = 0; i < ((kpcd->counterc + 3) / 4); i++) {
  BUF_DATA(code,
           kpcd->counterv[0 + i * 4],
           kpcd->counterv[1 + i * 4],
           kpcd->counterv[2 + i * 4],
           kpcd->counterv[3 + i * 4]);
 }
}

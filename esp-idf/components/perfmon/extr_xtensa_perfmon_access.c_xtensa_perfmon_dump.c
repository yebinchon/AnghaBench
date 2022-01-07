
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 scalar_t__ ERI_PERFMON_INTPC ;
 int ERI_PERFMON_MAX ;
 scalar_t__ ERI_PERFMON_PGM ;
 scalar_t__ ERI_PERFMON_PM0 ;
 scalar_t__ ERI_PERFMON_PMCTRL0 ;
 scalar_t__ ERI_PERFMON_PMSTAT0 ;
 int eri_read (scalar_t__) ;
 int printf (char*,int,int,...) ;

void xtensa_perfmon_dump(void)
{
    uint32_t pgm = eri_read(ERI_PERFMON_PGM);
    uint32_t intpc = eri_read(ERI_PERFMON_INTPC);
    printf("perfmon: PGM=%08x, INTPC=%08x\n", pgm, intpc);

    for (int i = 0 ; i < ERI_PERFMON_MAX ; i++) {
        uint32_t pm = eri_read(ERI_PERFMON_PM0 + i * sizeof(int32_t));
        uint32_t pmctrl = eri_read(ERI_PERFMON_PMCTRL0 + i * sizeof(int32_t));
        uint32_t pmstat = eri_read(ERI_PERFMON_PMSTAT0 + i * sizeof(int32_t));
        printf("perfmon: pm%i=%08x, pmctrl%i=%08x, pmstat%i=%08x\n", i, pm, i, pmctrl, i, pmstat);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERI_PERFMON_PGM ;
 int PGM_PMEN ;
 int eri_write (int ,int ) ;

void xtensa_perfmon_start(void)
{
    eri_write(ERI_PERFMON_PGM, PGM_PMEN);
}

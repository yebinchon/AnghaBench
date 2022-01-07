
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int ERI_PERFMON_MAX ;
 scalar_t__ ERI_PERFMON_PM0 ;
 int eri_read (scalar_t__) ;

uint32_t xtensa_perfmon_value(int id)
{
    if (id >= ERI_PERFMON_MAX) {
        return 0;
    }
    uint32_t result = eri_read(ERI_PERFMON_PM0 + id * sizeof(int32_t));
    return result;
}

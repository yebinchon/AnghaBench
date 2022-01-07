
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ SOC_DROM_HIGH ;
 scalar_t__ SOC_DROM_LOW ;
 scalar_t__ SOC_IROM_HIGH ;
 scalar_t__ SOC_IROM_LOW ;

__attribute__((used)) static bool should_map(uint32_t load_addr)
{
    return (load_addr >= SOC_IROM_LOW && load_addr < SOC_IROM_HIGH)
           || (load_addr >= SOC_DROM_LOW && load_addr < SOC_DROM_HIGH);
}

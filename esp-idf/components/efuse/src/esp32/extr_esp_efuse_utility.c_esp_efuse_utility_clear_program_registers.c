
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFUSE_CONF_READ ;
 int EFUSE_CONF_REG ;
 int REG_WRITE (int ,int ) ;

void esp_efuse_utility_clear_program_registers(void)
{
    REG_WRITE(EFUSE_CONF_REG, EFUSE_CONF_READ);
}

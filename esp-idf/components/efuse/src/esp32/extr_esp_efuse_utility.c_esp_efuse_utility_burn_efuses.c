
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ esp_efuse_coding_scheme_t ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 int COUNT_EFUSE_BLOCKS ;
 int COUNT_EFUSE_REG_PER_BLOCK ;
 scalar_t__ EFUSE_CMD_PGM ;
 scalar_t__ EFUSE_CMD_READ ;
 scalar_t__ EFUSE_CMD_REG ;
 scalar_t__ EFUSE_CODING_SCHEME_3_4 ;
 scalar_t__ EFUSE_CONF_READ ;
 scalar_t__ EFUSE_CONF_REG ;
 scalar_t__ EFUSE_CONF_WRITE ;
 int ESP_LOGW (int ,char*) ;
 scalar_t__ REG_READ (scalar_t__) ;
 int REG_WRITE (scalar_t__,scalar_t__) ;
 int TAG ;
 scalar_t__ esp_efuse_get_coding_scheme (int) ;
 int esp_efuse_set_timing () ;
 int esp_efuse_utility_reset () ;
 int memcpy (int *,int *,int) ;
 TYPE_1__* range_write_addr_blocks ;
 scalar_t__** virt_blocks ;

void esp_efuse_utility_burn_efuses(void)
{
    esp_efuse_set_timing();

    REG_WRITE(EFUSE_CONF_REG, EFUSE_CONF_WRITE);
    REG_WRITE(EFUSE_CMD_REG, EFUSE_CMD_PGM);
    while (REG_READ(EFUSE_CMD_REG) != 0) {};
    REG_WRITE(EFUSE_CONF_REG, EFUSE_CONF_READ);
    REG_WRITE(EFUSE_CMD_REG, EFUSE_CMD_READ);
    while (REG_READ(EFUSE_CMD_REG) != 0) {};

    esp_efuse_utility_reset();
}

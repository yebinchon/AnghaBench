
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* mac_regs; } ;
typedef TYPE_3__ emac_hal_context_t ;
struct TYPE_5__ {int miicsrclk; } ;
struct TYPE_6__ {TYPE_1__ emacgmiiaddr; } ;


 int CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ ;

void emac_hal_set_csr_clock_range(emac_hal_context_t *hal)
{

    if (CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ >= 20 && CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ < 35) {
        hal->mac_regs->emacgmiiaddr.miicsrclk = 2;
    } else if (CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ >= 35 && CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ < 60) {
        hal->mac_regs->emacgmiiaddr.miicsrclk = 3;
    } else if (CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ >= 60 && CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ < 100) {
        hal->mac_regs->emacgmiiaddr.miicsrclk = 0;
    } else if (CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ >= 100 && CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ < 150) {
        hal->mac_regs->emacgmiiaddr.miicsrclk = 1;
    } else if (CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ > 150 && CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ < 250) {
        hal->mac_regs->emacgmiiaddr.miicsrclk = 4;
    } else {
        hal->mac_regs->emacgmiiaddr.miicsrclk = 5;
    }
}

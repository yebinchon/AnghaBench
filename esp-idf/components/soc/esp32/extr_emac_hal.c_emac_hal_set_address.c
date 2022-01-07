
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_2__* mac_regs; } ;
typedef TYPE_3__ emac_hal_context_t ;
struct TYPE_5__ {int address0_hi; } ;
struct TYPE_6__ {int emacaddr0low; TYPE_1__ emacaddr0high; } ;



void emac_hal_set_address(emac_hal_context_t *hal, uint8_t *mac_addr)
{

    if (!(mac_addr[0] & 0x01)) {
        hal->mac_regs->emacaddr0high.address0_hi = (mac_addr[5] << 8) | mac_addr[4];
        hal->mac_regs->emacaddr0low = (mac_addr[3] << 24) | (mac_addr[2] << 16) | (mac_addr[1] << 8) | (mac_addr[0]);
    }
}

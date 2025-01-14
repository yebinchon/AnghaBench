
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int val; int page_select; } ;
typedef TYPE_1__ psr_reg_t ;
struct TYPE_7__ {int addr; TYPE_3__* eth; } ;
typedef TYPE_2__ phy_rtl8201_t ;
struct TYPE_8__ {scalar_t__ (* phy_reg_write ) (TYPE_3__*,int ,int ,int ) ;} ;
typedef TYPE_3__ esp_eth_mediator_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int ETH_PHY_PSR_REG_ADDR ;
 int PHY_CHECK (int,char*,int ) ;
 int err ;
 scalar_t__ stub1 (TYPE_3__*,int ,int ,int ) ;

__attribute__((used)) static esp_err_t rtl8201_page_select(phy_rtl8201_t *rtl8201, uint32_t page)
{
    esp_eth_mediator_t *eth = rtl8201->eth;
    psr_reg_t psr = {
        .page_select = page
    };
    PHY_CHECK(eth->phy_reg_write(eth, rtl8201->addr, ETH_PHY_PSR_REG_ADDR, psr.val) == ESP_OK, "write PSR failed", err);
    return ESP_OK;
err:
    return ESP_FAIL;
}

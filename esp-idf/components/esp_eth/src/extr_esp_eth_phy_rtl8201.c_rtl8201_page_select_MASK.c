#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  val; int /*<<< orphan*/  page_select; } ;
typedef  TYPE_1__ psr_reg_t ;
struct TYPE_7__ {int /*<<< orphan*/  addr; TYPE_3__* eth; } ;
typedef  TYPE_2__ phy_rtl8201_t ;
struct TYPE_8__ {scalar_t__ (* phy_reg_write ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ esp_eth_mediator_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  ETH_PHY_PSR_REG_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  err ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC2(phy_rtl8201_t *rtl8201, uint32_t page)
{
    esp_eth_mediator_t *eth = rtl8201->eth;
    psr_reg_t psr = {
        .page_select = page
    };
    FUNC0(eth->phy_reg_write(eth, rtl8201->addr, ETH_PHY_PSR_REG_ADDR, psr.val) == ESP_OK, "write PSR failed", err);
    return ESP_OK;
err:
    return ESP_FAIL;
}
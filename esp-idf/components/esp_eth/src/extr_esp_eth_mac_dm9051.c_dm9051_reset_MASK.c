#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_5__ {int sw_reset_timeout_ms; } ;
typedef  TYPE_1__ emac_dm9051_t ;

/* Variables and functions */
 int /*<<< orphan*/  DM9051_GPR ; 
 int /*<<< orphan*/  DM9051_NCR ; 
 int /*<<< orphan*/  ESP_ERR_TIMEOUT ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NCR_RST ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  err ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC5(emac_dm9051_t *emac)
{
    esp_err_t ret = ESP_OK;
    /* power on phy */
    FUNC0(FUNC2(emac, DM9051_GPR, 0x00) == ESP_OK, "write GPR failed", err, ESP_FAIL);
    /* mac and phy register won't be accesable within at least 1ms */
    FUNC4(FUNC3(10));
    /* software reset */
    uint8_t ncr = NCR_RST;
    FUNC0(FUNC2(emac, DM9051_NCR, ncr) == ESP_OK, "write NCR failed", err, ESP_FAIL);
    uint32_t to = 0;
    for (to = 0; to < emac->sw_reset_timeout_ms / 10; to++) {
        FUNC0(FUNC1(emac, DM9051_NCR, &ncr) == ESP_OK, "read NCR failed", err, ESP_FAIL);
        if (!(ncr & NCR_RST)) {
            break;
        }
        FUNC4(FUNC3(10));
    }
    FUNC0(to < emac->sw_reset_timeout_ms / 10, "reset timeout", err, ESP_ERR_TIMEOUT);
    return ESP_OK;
err:
    return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  emac_dm9051_t ;

/* Variables and functions */
 int /*<<< orphan*/  DM9051_IMR ; 
 int /*<<< orphan*/  DM9051_RCR ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RCR_RXEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  err ; 

__attribute__((used)) static esp_err_t FUNC3(emac_dm9051_t *emac)
{
    esp_err_t ret = ESP_OK;
    /* disable interrupt */
    FUNC0(FUNC2(emac, DM9051_IMR, 0x00) == ESP_OK, "write IMR failed", err, ESP_FAIL);
    /* disable rx */
    uint8_t rcr = 0;
    FUNC0(FUNC1(emac, DM9051_RCR, &rcr) == ESP_OK, "read RCR failed", err, ESP_FAIL);
    rcr &= ~RCR_RXEN;
    FUNC0(FUNC2(emac, DM9051_RCR, rcr) == ESP_OK, "write RCR failed", err, ESP_FAIL);
    return ESP_OK;
err:
    return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * sdmmc_response_t ;
struct TYPE_7__ {int flags; int datalen; int /*<<< orphan*/ * data; int /*<<< orphan*/  arg; int /*<<< orphan*/  opcode; } ;
typedef  TYPE_1__ sdmmc_command_t ;
typedef  int /*<<< orphan*/  sdmmc_cid_t ;
struct TYPE_8__ {int /*<<< orphan*/  is_mmc; } ;
typedef  TYPE_2__ sdmmc_card_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  MMC_SEND_CID ; 
 int SCF_CMD_ADTC ; 
 int SCF_CMD_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__*) ; 

esp_err_t FUNC5(sdmmc_card_t *card, sdmmc_cid_t *out_cid)
{
    FUNC0(*out_cid);
    FUNC0(FUNC1(card) && "SEND_CID should only be used in SPI mode");
    FUNC0(!card->is_mmc && "MMC cards are not supported in SPI mode");
    sdmmc_response_t buf;
    sdmmc_command_t cmd = {
        .opcode = MMC_SEND_CID,
        .flags = SCF_CMD_READ | SCF_CMD_ADTC,
        .arg = 0,
        .data = &buf[0],
        .datalen = sizeof(buf)
    };
    esp_err_t err = FUNC4(card, &cmd);
    if (err != ESP_OK) {
        return err;
    }
    FUNC3(buf, sizeof(buf));
    return FUNC2(buf, out_cid);
}
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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  spi_buf ;
typedef  int /*<<< orphan*/ * sdmmc_response_t ;
typedef  int /*<<< orphan*/  sdmmc_csd_t ;
struct TYPE_7__ {int flags; int datalen; int /*<<< orphan*/ * response; int /*<<< orphan*/ * data; int /*<<< orphan*/  arg; int /*<<< orphan*/  opcode; } ;
typedef  TYPE_1__ sdmmc_command_t ;
struct TYPE_8__ {scalar_t__ is_mmc; int /*<<< orphan*/  rca; } ;
typedef  TYPE_2__ sdmmc_card_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMC_SEND_CSD ; 
 int SCF_CMD_AC ; 
 int SCF_CMD_ADTC ; 
 int SCF_CMD_READ ; 
 int SCF_RSP_R1 ; 
 int SCF_RSP_R2 ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_1__*) ; 

esp_err_t FUNC6(sdmmc_card_t* card, sdmmc_csd_t* out_csd)
{
    /* The trick with SEND_CSD is that in SPI mode, it acts as a data read
     * command, while in SD mode it is an AC command with R2 response.
     */
    sdmmc_response_t spi_buf;
    const bool is_spi = FUNC1(card);
    sdmmc_command_t cmd = {
            .opcode = MMC_SEND_CSD,
            .arg = is_spi ? 0 : FUNC0(card->rca),
            .flags = is_spi ? (SCF_CMD_READ | SCF_CMD_ADTC | SCF_RSP_R1) :
                    (SCF_CMD_AC | SCF_RSP_R2),
            .data = is_spi ? &spi_buf[0] : 0,
            .datalen = is_spi ? sizeof(spi_buf) : 0,
    };
    esp_err_t err = FUNC5(card, &cmd);
    if (err != ESP_OK) {
        return err;
    }
    uint32_t* ptr = cmd.response;
    if (is_spi) {
        FUNC3(spi_buf,  sizeof(spi_buf));
        ptr = spi_buf;
    }
    if (card->is_mmc) {
        err = FUNC4(cmd.response, out_csd);
    } else {
        err = FUNC2(ptr, out_csd);
    }
    return err;
}
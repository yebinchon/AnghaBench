#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* data; size_t datalen; size_t blklen; int flags; int /*<<< orphan*/  arg; int /*<<< orphan*/  opcode; } ;
typedef  TYPE_1__ sdmmc_command_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_SEND_EXT_CSD ; 
 int SCF_CMD_ADTC ; 
 int SCF_CMD_READ ; 
 int SCF_RSP_R1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

esp_err_t FUNC3(sdmmc_card_t* card, void *out_data, size_t datalen)
{
    FUNC0(FUNC1(out_data));
    sdmmc_command_t cmd = {
        .data = out_data,
        .datalen = datalen,
        .blklen = datalen,
        .opcode = MMC_SEND_EXT_CSD,
        .arg = 0,
        .flags = SCF_CMD_ADTC | SCF_RSP_R1 | SCF_CMD_READ
    };
    return FUNC2(card, &cmd);
}
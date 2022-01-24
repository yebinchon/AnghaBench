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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLC0TX_LINK ; 
 int /*<<< orphan*/  SLCCONF1 ; 
 int SLC_SLC0_RX_STITCH_EN ; 
 int SLC_SLC0_TXLINK_START ; 
 int SLC_SLC0_TX_STITCH_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(sdmmc_card_t* card)
{
    FUNC1("Initialize some ESP32 SDIO slave registers\n");

    uint32_t reg_val;
    FUNC0( FUNC2(card, SLCCONF1, &reg_val) );
    reg_val &= ~(SLC_SLC0_RX_STITCH_EN | SLC_SLC0_TX_STITCH_EN);
    FUNC0( FUNC3(card, SLCCONF1, reg_val) );

    FUNC0( FUNC2(card, SLC0TX_LINK, &reg_val) );
    reg_val |= SLC_SLC0_TXLINK_START;
    FUNC0( FUNC3(card, SLC0TX_LINK, reg_val) );
}
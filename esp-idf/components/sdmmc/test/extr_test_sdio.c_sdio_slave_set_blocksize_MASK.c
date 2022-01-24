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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;

/* Variables and functions */
 int SD_IO_CCCR_BLKSIZEH ; 
 int SD_IO_CCCR_BLKSIZEL ; 
 int SD_IO_FBR_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(sdmmc_card_t* card, int function, uint16_t bs)
{
    const uint8_t* bs_u8 = (const uint8_t*) &bs;
    uint16_t bs_read = 0;
    uint8_t* bs_read_u8 = (uint8_t*) &bs_read;
    uint32_t offset = SD_IO_FBR_START * function;
    FUNC1( FUNC3(card, 0, offset + SD_IO_CCCR_BLKSIZEL, bs_u8[0], NULL));
    FUNC1( FUNC3(card, 0, offset + SD_IO_CCCR_BLKSIZEH, bs_u8[1], NULL));
    FUNC1( FUNC2(card, 0, offset + SD_IO_CCCR_BLKSIZEL, &bs_read_u8[0]));
    FUNC1( FUNC2(card, 0, offset + SD_IO_CCCR_BLKSIZEH, &bs_read_u8[1]));
    FUNC0(bs, bs_read);
}
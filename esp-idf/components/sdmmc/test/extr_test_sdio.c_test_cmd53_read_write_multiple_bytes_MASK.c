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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;

/* Variables and functions */
 size_t DR_REG_SLCHOST_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  MALLOC_CAP_DMA ; 
 size_t SLCHOST_CONF_W0 ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,size_t const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,size_t const,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,size_t const,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC10(sdmmc_card_t* card, size_t n_bytes)
{
    FUNC5("Write multiple bytes using CMD53\n");
    const size_t scratch_area_reg = SLCHOST_CONF_W0 - DR_REG_SLCHOST_BASE;

    uint8_t* src = FUNC4(512, MALLOC_CAP_DMA);
    uint32_t* src_32 = (uint32_t*) src;

    for (size_t i = 0; i < (n_bytes + 3) / 4; ++i) {
        src_32[i] = FUNC6();
    }

    FUNC2(FUNC9(card, 1, scratch_area_reg, src, n_bytes));
    FUNC0(TAG, src, n_bytes);

    FUNC5("Read back using CMD52\n");
    uint8_t* dst = FUNC4(512, MALLOC_CAP_DMA);
    for (size_t i = 0; i < n_bytes; ++i) {
        FUNC2(FUNC7(card, 1, scratch_area_reg + i, &dst[i]));
    }
    FUNC0(TAG, dst, n_bytes);
    FUNC1(src, dst, n_bytes);

    FUNC5("Read back using CMD53\n");
    FUNC2(FUNC8(card, 1, scratch_area_reg, dst, n_bytes));
    FUNC0(TAG, dst, n_bytes);
    FUNC1(src, dst, n_bytes);

    FUNC3(src);
    FUNC3(dst);
}
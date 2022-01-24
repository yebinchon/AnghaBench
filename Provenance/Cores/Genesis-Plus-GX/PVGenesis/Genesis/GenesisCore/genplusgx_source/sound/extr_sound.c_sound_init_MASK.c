#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  psgBoostNoise; int /*<<< orphan*/  psg_preamp; int /*<<< orphan*/  dac_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int SYSTEM_MD ; 
 int SYSTEM_PBC ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  YM2413ResetChip ; 
 int /*<<< orphan*/  YM2413Update ; 
 int /*<<< orphan*/  YM2413Write ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  YM2612ResetChip ; 
 int /*<<< orphan*/  YM2612Update ; 
 int /*<<< orphan*/  YM2612Write ; 
 int /*<<< orphan*/  YM_Reset ; 
 int /*<<< orphan*/  YM_Update ; 
 int /*<<< orphan*/  YM_Write ; 
 TYPE_1__ config ; 
 int fm_cycles_ratio ; 
 int system_hw ; 

void FUNC4( void )
{
  /* Initialize FM chip */
  if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
  {
    /* YM2612 */
    FUNC3();
    FUNC2(config.dac_bits);
    YM_Reset = YM2612ResetChip;
    YM_Update = YM2612Update;
    YM_Write = YM2612Write;

    /* chip is running a VCLK / 144 = MCLK / 7 / 144 */
    fm_cycles_ratio = 144 * 7;
  }
  else
  {
    /* YM2413 */
    FUNC1();
    YM_Reset = YM2413ResetChip;
    YM_Update = YM2413Update;
    YM_Write = YM2413Write;

    /* chip is running a ZCLK / 72 = MCLK / 15 / 72 */
    fm_cycles_ratio = 72 * 15;
  }

  /* Initialize PSG chip */
  FUNC0(0, config.psg_preamp, config.psgBoostNoise, 0xff);
}
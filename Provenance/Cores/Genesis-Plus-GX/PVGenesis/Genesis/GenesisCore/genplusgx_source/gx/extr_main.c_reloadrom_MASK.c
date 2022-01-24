#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ status; } ;
struct TYPE_7__ {int hot_swap; int /*<<< orphan*/  s_device; int /*<<< orphan*/  s_default; } ;
struct TYPE_5__ {scalar_t__ boot; } ;
struct TYPE_6__ {TYPE_1__ cartridge; } ;

/* Variables and functions */
 scalar_t__ CD_OPEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SAMPLERATE_48KHZ ; 
 int SYSTEM_MCD ; 
 int SYSTEM_MD ; 
 int SYSTEM_PBC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ cdd ; 
 TYPE_3__ config ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ interlaced ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_2__ scd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int system_hw ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(void)
{
  /* Cartridge "Hot Swap" support (make sure system has already been inited once and use cartridges) */
  if ((config.hot_swap == 3) && ((system_hw != SYSTEM_MCD) || scd.cartridge.boot))
  {
    /* Only initialize cartridge hardware */
    if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
    {
      /* 16-bit cartridge */
      FUNC3();
      FUNC4(1);
    }
    else
    {
      /* 8-bit cartridge */
      FUNC6();
      FUNC7();
    }
  }

  /* Disc Swap support (automatically enabled if CD tray is open) */
  else if ((system_hw != SYSTEM_MCD) || (cdd.status != CD_OPEN))
  {
    /* Initialize audio emulation */
    interlaced = 0;
    FUNC1(SAMPLERATE_48KHZ, FUNC2());
     
    /* Switch virtual system on */
    FUNC8();
    FUNC9();

    /* Allow hot swap */
    config.hot_swap |= 2;
  }

  /* Auto-Load Backup RAM */
  FUNC5(0,config.s_device);
            
  /* Auto-Load State */
  FUNC5(config.s_default,config.s_device);

  /* Load Cheat file */
  FUNC0();
}
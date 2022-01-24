#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {TYPE_1__* input; } ;
struct TYPE_5__ {scalar_t__* dev; scalar_t__* pad; } ;
struct TYPE_4__ {scalar_t__ device; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int ConfigRequested ; 
 int MAX_DEVICES ; 
 scalar_t__ NO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int WPAD_BUTTON_HOME ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int WPAD_CLASSIC_BUTTON_HOME ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__ config ; 
 TYPE_2__ input ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__) ; 

void FUNC6(void)
{
  /* Update GC controllers status */
  FUNC0();

#ifdef HW_RVL
  /* Update Wii controllers status */
  WPAD_ScanPads();

  /* Hard-coded menu key */
  u32 p = WPAD_ButtonsHeld(0);
  if ((p & WPAD_BUTTON_HOME) || (p & WPAD_CLASSIC_BUTTON_HOME))
  {
    ConfigRequested = 1;
    return;
  }
#endif

  int i, player = 0;
  for (i=0; i<MAX_DEVICES; i++)
  {
    /* update inputs */
    if (input.dev[i] != NO_DEVICE)
    {
      /* clear key status */
      input.pad[i] = 0;

      if (config.input[player].device == 0)
      {
        FUNC4(config.input[player].port, i);
      }
#ifdef HW_RVL
      else if (config.input[player].device > 0)
      {
        wpad_update(config.input[player].port, i, config.input[player].device - 1);
      }
#endif

      /* increment player index */
      player ++;
    }
  }

  /* Update RAM patches */
  FUNC1();
}
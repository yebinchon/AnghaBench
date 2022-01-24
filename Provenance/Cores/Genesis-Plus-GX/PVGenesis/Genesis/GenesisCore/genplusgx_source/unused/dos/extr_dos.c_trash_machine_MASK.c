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
struct TYPE_2__ {scalar_t__ sound; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFX_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gen_bmp ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ option ; 
 int /*<<< orphan*/  screen ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
  if(option.sound)
  {
    FUNC2();
  }
  FUNC0(screen);
  FUNC1(gen_bmp);
  FUNC3(GFX_TEXT, 0, 0, 0, 0);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int x; int y; scalar_t__ h; scalar_t__ w; } ;
struct TYPE_4__ {int /*<<< orphan*/  pitch; TYPE_1__ viewport; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int SYSTEM_MCD ; 
 int SYSTEM_MD ; 
 int SYSTEM_PBC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ bitmap ; 
 int /*<<< orphan*/  soundbuffer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int system_hw ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC6(void) 
{
   int aud;

   if (system_hw == SYSTEM_MCD)
      FUNC3(0);
   else if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
      FUNC2(0);
   else
      FUNC4(0);

   FUNC5(bitmap.data, bitmap.viewport.w + (bitmap.viewport.x * 2), bitmap.viewport.h + (bitmap.viewport.y * 2), bitmap.pitch);

   aud = FUNC1(soundbuffer) << 1;
   FUNC0(soundbuffer, aud >> 1);
}
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
struct TYPE_2__ {int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 unsigned int MAX_USERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ qnx_joypad ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static bool FUNC2(void *data)
{
   unsigned autoconf_pad;

   (void)data;

   for (autoconf_pad = 0; autoconf_pad < MAX_USERS; autoconf_pad++)
      FUNC0(
            FUNC1(autoconf_pad),
            NULL,
            qnx_joypad.ident,
            autoconf_pad,
            0,
            0
            );

   return true;
}
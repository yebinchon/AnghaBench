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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 scalar_t__ WPAD_EXP_NOCONTROLLER ; 
 TYPE_1__ gx_joypad ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* pad_type ; 

__attribute__((used)) static void FUNC2(unsigned port, uint32_t ptype)
{
   pad_type[port] = ptype;

   if (ptype != WPAD_EXP_NOCONTROLLER)
      FUNC1(
            FUNC0(port),
            NULL,
            gx_joypad.ident,
            port,
            0,
            0
            );
}
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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFX_CTX_FLAGS_SCREENSHOTS_SUPPORTED ; 

__attribute__((used)) static uint32_t FUNC1(void *data)
{
   uint32_t             flags   = 0;

   FUNC0(flags, GFX_CTX_FLAGS_SCREENSHOTS_SUPPORTED);

   return flags;
}
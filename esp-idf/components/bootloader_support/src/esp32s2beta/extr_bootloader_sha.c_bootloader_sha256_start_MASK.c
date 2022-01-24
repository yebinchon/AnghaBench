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
typedef  int /*<<< orphan*/ * bootloader_sha256_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  SHA2_256 ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bootloader_sha256_handle_t FUNC2()
{
    // Enable SHA hardware
    FUNC0();
    FUNC1(&ctx, SHA2_256);
    return &ctx; // Meaningless non-NULL value
}
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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * global_cacert ; 
 scalar_t__ global_cacert_pem_bytes ; 

void FUNC1(void)
{
    if (global_cacert) {
        FUNC0(global_cacert);
        global_cacert = NULL;
        global_cacert_pem_bytes = 0;
    }
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WPA_PROTO_RSN ; 
 int /*<<< orphan*/  WPA_PROTO_WPA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void  FUNC5(void)
{
    if (FUNC3()) {
        FUNC4(WPA_PROTO_WPA, FUNC1());
    } else if (FUNC2()) {
        FUNC4(WPA_PROTO_RSN, FUNC1());
    } else {
        FUNC0(0);
    }
}
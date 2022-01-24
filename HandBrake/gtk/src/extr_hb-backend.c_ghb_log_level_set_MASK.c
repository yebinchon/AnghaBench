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
 int /*<<< orphan*/  h_live ; 
 int /*<<< orphan*/  h_queue ; 
 int /*<<< orphan*/  h_scan ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void
FUNC1(int level)
{
    FUNC0(h_scan, level);
    FUNC0(h_queue, level);
    FUNC0(h_live, level);
}
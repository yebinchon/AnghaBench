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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ automapactive ; 
 int /*<<< orphan*/  w_chat ; 
 int /*<<< orphan*/  w_message ; 
 int /*<<< orphan*/  w_title ; 

void FUNC3(void)
{

    FUNC1(&w_message);
    FUNC0(&w_chat);
    if (automapactive)
	FUNC2(&w_title, false);

}
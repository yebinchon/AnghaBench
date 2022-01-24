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
 int /*<<< orphan*/  TIMERG0 ; 
 int /*<<< orphan*/  TIMERG1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC2(void)
{
    FUNC1(&TIMERG0, false);
    FUNC0(&TIMERG0, false);
    FUNC1(&TIMERG0, true);

    FUNC1(&TIMERG1, false);
    FUNC0(&TIMERG1, false);
    FUNC1(&TIMERG1, true);
}
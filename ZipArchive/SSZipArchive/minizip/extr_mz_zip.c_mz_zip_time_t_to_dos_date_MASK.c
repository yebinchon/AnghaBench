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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm const*) ; 

uint32_t FUNC2(time_t unix_time)
{
    struct tm ptm;
    FUNC0(unix_time, &ptm);
    return FUNC1((const struct tm *)&ptm);
}
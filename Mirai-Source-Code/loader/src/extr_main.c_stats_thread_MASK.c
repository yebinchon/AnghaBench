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
struct TYPE_2__ {int /*<<< orphan*/  total_tftps; int /*<<< orphan*/  total_wgets; int /*<<< orphan*/  total_echoes; int /*<<< orphan*/  total_successes; int /*<<< orphan*/  total_logins; int /*<<< orphan*/  curr_open; int /*<<< orphan*/  total_input; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* srv ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void *FUNC4(void *arg)
{
    uint32_t seconds = 0;

    while (TRUE)
    {
#ifndef DEBUG
        FUNC2("%ds\tProcessed: %d\tConns: %d\tLogins: %d\tRan: %d\tEchoes:%d Wgets: %d, TFTPs: %d\n",
               seconds++, FUNC0(&srv->total_input), FUNC0(&srv->curr_open), FUNC0(&srv->total_logins), FUNC0(&srv->total_successes),
               FUNC0(&srv->total_echoes), FUNC0(&srv->total_wgets), FUNC0(&srv->total_tftps));
#endif
        FUNC1(stdout);
        FUNC3(1);
    }
}
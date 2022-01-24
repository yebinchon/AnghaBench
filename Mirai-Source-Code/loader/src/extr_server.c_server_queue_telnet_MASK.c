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
struct telnet_info {int dummy; } ;
struct server {scalar_t__ max_open; int /*<<< orphan*/  curr_open; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct server*,struct telnet_info*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct server *srv, struct telnet_info *info)
{
    while (FUNC0(&srv->curr_open) >= srv->max_open)
    {
        FUNC4(1);
    }
    FUNC1(&srv->curr_open);

    if (srv == NULL)
        FUNC2("srv == NULL 3\n");

    FUNC3(srv, info);
}
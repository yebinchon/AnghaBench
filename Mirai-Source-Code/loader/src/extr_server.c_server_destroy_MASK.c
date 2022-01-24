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
struct server {struct server* workers; struct server* bind_addrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct server*) ; 

void FUNC1(struct server *srv)
{
    if (srv == NULL)
        return;
    if (srv->bind_addrs != NULL)
        FUNC0(srv->bind_addrs);
    if (srv->workers != NULL)
        FUNC0(srv->workers);
    FUNC0(srv);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int fd; TYPE_1__* node; int /*<<< orphan*/  rcvbuf; int /*<<< orphan*/  sndbuf; } ;
typedef  TYPE_2__ clusterLink ;
struct TYPE_8__ {int /*<<< orphan*/  el; } ;
struct TYPE_6__ {int /*<<< orphan*/ * link; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_READABLE ; 
 int /*<<< orphan*/  AE_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(clusterLink *link) {
    if (link->fd != -1) {
        FUNC0(server.el, link->fd, AE_WRITABLE);
        FUNC0(server.el, link->fd, AE_READABLE);
    }
    FUNC2(link->sndbuf);
    FUNC2(link->rcvbuf);
    if (link->node)
        link->node->link = NULL;
    FUNC1(link->fd);
    FUNC3(link);
}
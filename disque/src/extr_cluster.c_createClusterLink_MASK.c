#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  clusterNode ;
struct TYPE_4__ {int fd; int /*<<< orphan*/ * node; void* rcvbuf; void* sndbuf; int /*<<< orphan*/  ctime; } ;
typedef  TYPE_1__ clusterLink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 () ; 
 TYPE_1__* FUNC2 (int) ; 

clusterLink *FUNC3(clusterNode *node) {
    clusterLink *link = FUNC2(sizeof(*link));
    link->ctime = FUNC0();
    link->sndbuf = FUNC1();
    link->rcvbuf = FUNC1();
    link->node = node;
    link->fd = -1;
    return link;
}
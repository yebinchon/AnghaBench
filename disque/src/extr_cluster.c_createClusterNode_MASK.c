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
struct TYPE_4__ {int flags; int /*<<< orphan*/  fail_reports; scalar_t__ port; int /*<<< orphan*/  ip; int /*<<< orphan*/ * link; scalar_t__ fail_time; scalar_t__ pong_received; scalar_t__ ping_sent; int /*<<< orphan*/  ctime; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ clusterNode ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTER_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  zfree ; 
 TYPE_1__* FUNC6 (int) ; 

clusterNode *FUNC7(char *nodename, int flags) {
    clusterNode *node = FUNC6(sizeof(*node));

    if (nodename)
        FUNC3(node->name, nodename, CLUSTER_NAMELEN);
    else
        FUNC0(node->name, CLUSTER_NAMELEN);
    node->ctime = FUNC5();
    node->flags = flags;
    node->ping_sent = node->pong_received = 0;
    node->fail_time = 0;
    node->link = NULL;
    FUNC4(node->ip,0,sizeof(node->ip));
    node->port = 0;
    node->fail_reports = FUNC1();
    FUNC2(node->fail_reports,zfree);
    return node;
}
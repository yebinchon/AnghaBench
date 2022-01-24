#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  id; int /*<<< orphan*/  nodes_delivered; } ;
typedef  TYPE_1__ job ;
typedef  int /*<<< orphan*/  clusterNode ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTERMSG_TYPE_SETACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(clusterNode *node, job *j) {
    uint32_t maxowners = FUNC1(j->nodes_delivered);
    FUNC0(CLUSTERMSG_TYPE_SETACK,node,j->id,maxowners);
}
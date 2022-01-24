#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  nodes_delivered; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ job ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ clusterNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(job *j) {
    job *old = FUNC5(j->id);
    if (!old) return;

    dictIterator *di = FUNC1(j->nodes_delivered);
    dictEntry *de;

    while((de = FUNC3(di)) != NULL) {
        clusterNode *node = FUNC2(de);
        FUNC0(old->nodes_delivered,node->name,node);
    }
    FUNC4(di);
}
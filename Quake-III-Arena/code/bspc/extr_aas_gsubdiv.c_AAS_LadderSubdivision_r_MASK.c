#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__** children; scalar_t__ tmparea; } ;
typedef  TYPE_1__ tmp_node_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 

tmp_node_t *FUNC1(tmp_node_t *tmpnode)
{
	//if this is a solid leaf
	if (!tmpnode) return 0;
	//negative so it's an area
	if (tmpnode->tmparea) return FUNC0(tmpnode);
	//do the children recursively
	tmpnode->children[0] = FUNC1(tmpnode->children[0]);
	tmpnode->children[1] = FUNC1(tmpnode->children[1]);
	return tmpnode;
}
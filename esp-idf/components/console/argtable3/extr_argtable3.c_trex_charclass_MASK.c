#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* _nodes; } ;
struct TYPE_5__ {int left; } ;
typedef  TYPE_2__ TRex ;

/* Variables and functions */
 int /*<<< orphan*/  OP_CCLASS ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(TRex *exp,int classid)
{
	int n = FUNC0(exp,OP_CCLASS);
	exp->_nodes[n].left = classid;
	return n;
}
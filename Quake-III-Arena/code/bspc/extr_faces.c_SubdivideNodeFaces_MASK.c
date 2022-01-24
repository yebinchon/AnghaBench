#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* faces; } ;
typedef  TYPE_1__ node_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef  TYPE_2__ face_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 

void FUNC1 (node_t *node)
{
	face_t	*f;

	for (f = node->faces ; f ; f=f->next)
	{
		FUNC0 (node, f);
	}
}
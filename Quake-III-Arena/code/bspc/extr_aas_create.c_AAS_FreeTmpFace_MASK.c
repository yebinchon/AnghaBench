#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ winding; TYPE_2__* l_next; TYPE_1__* l_prev; } ;
typedef  TYPE_3__ tmp_face_t ;
struct TYPE_10__ {int /*<<< orphan*/  numfaces; TYPE_2__* faces; } ;
struct TYPE_8__ {TYPE_1__* l_prev; } ;
struct TYPE_7__ {TYPE_2__* l_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_4__ tmpaasworld ; 

void FUNC2(tmp_face_t *tmpface)
{
	if (tmpface->l_next) tmpface->l_next->l_prev = tmpface->l_prev;
	if (tmpface->l_prev) tmpface->l_prev->l_next = tmpface->l_next;
	else tmpaasworld.faces = tmpface->l_next;
	//free the winding
	if (tmpface->winding) FUNC1(tmpface->winding);
	//free the face
	FUNC0(tmpface);
	tmpaasworld.numfaces--;
}
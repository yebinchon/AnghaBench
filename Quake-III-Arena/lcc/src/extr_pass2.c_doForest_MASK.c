#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* rcc_interface_ty ;
struct TYPE_10__ {TYPE_5__* forest; } ;
struct TYPE_15__ {TYPE_1__ u; } ;
struct TYPE_14__ {struct TYPE_14__* link; } ;
struct TYPE_11__ {int /*<<< orphan*/  nodes; } ;
struct TYPE_12__ {TYPE_2__ rcc_Forest; } ;
struct TYPE_13__ {TYPE_3__ v; } ;
typedef  TYPE_5__* Node ;

/* Variables and functions */
 int /*<<< orphan*/  Gen ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 TYPE_8__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(rcc_interface_ty in) {
	Node *tail = &FUNC4(Gen)->u.forest;
	int i, n = FUNC1(in->v.rcc_Forest.nodes);

	for (i = 0; i < n; i++) {
		*tail = FUNC5(FUNC2(in->v.rcc_Forest.nodes));
		FUNC3(*tail);
		tail = &(*tail)->link;
	}
	*tail = NULL;
	FUNC0(&in->v.rcc_Forest.nodes);
}
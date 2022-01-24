#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_8__ {TYPE_4__* sym; } ;
struct TYPE_10__ {TYPE_3__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  ftab; int /*<<< orphan*/  flist; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  Symbol ;
typedef  scalar_t__ Field ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  src ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ xref ; 

Field FUNC5(const char *name, Type ty) {
	Field p = FUNC1(name, FUNC3(ty)->u.sym->u.s.flist);

	if (p && xref) {
		Symbol q;
		FUNC0(FUNC3(ty)->u.sym->u.s.ftab);
		q = FUNC2(name, FUNC3(ty)->u.sym->u.s.ftab);
		FUNC0(q);
		FUNC4(q, src);
	}
	return p;
}
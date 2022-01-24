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
typedef  TYPE_1__* rcc_item_ty ;
struct TYPE_3__ {int uid; int kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  Symbol ; 
 int /*<<< orphan*/  Type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  symbol ; 
 int /*<<< orphan*/  type ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(rcc_item_ty x) {
	FUNC2("<a name='%d'>", x->uid);
#define attributes xx(x,uid,define_uid)
	FUNC2("</a>");
	switch (x->kind) {
	static char *typename = "item";
	FUNC1(Symbol);
		FUNC3(Symbol,symbol,symbol);
		break;
	FUNC1(Type);
		FUNC3(Type,type,type);
		break;
	default: FUNC0(0);
	}
#undef attributes
	FUNC2("</ul>\n");
}
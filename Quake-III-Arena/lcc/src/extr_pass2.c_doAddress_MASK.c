#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  TYPE_5__* rcc_interface_ty ;
struct TYPE_13__ {int /*<<< orphan*/  offset; TYPE_6__* base; void* sym; } ;
struct TYPE_14__ {TYPE_1__ addr; } ;
struct TYPE_19__ {TYPE_2__ u; } ;
struct TYPE_18__ {scalar_t__ scope; scalar_t__ sclass; } ;
struct TYPE_15__ {int uid; int p; int /*<<< orphan*/  n; int /*<<< orphan*/  q; } ;
struct TYPE_16__ {TYPE_3__ rcc_Address; } ;
struct TYPE_17__ {TYPE_4__ v; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* address ) (void*,TYPE_6__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_6__* Symbol ;
typedef  TYPE_7__* Code ;

/* Variables and functions */
 int /*<<< orphan*/  Address ; 
 scalar_t__ EXTERN ; 
 scalar_t__ GLOBAL ; 
 TYPE_11__* IR ; 
 scalar_t__ STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** items ; 
 int nuids ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(rcc_interface_ty in) {
	int uid = in->v.rcc_Address.uid;
	Symbol p = FUNC4(in->v.rcc_Address.p);

	FUNC0(uid >= 0 && uid < nuids);
	FUNC0(items[uid] == NULL);
	items[uid] = FUNC2(uid, in->v.rcc_Address.q);
	if (p->scope == GLOBAL || p->sclass == STATIC || p->sclass == EXTERN)
		(*IR->address)(FUNC4(uid), p, in->v.rcc_Address.n);
	else {
		Code cp = FUNC1(Address);
		cp->u.addr.sym = FUNC4(uid);
		cp->u.addr.base = p;
		cp->u.addr.offset = in->v.rcc_Address.n;
	}
}
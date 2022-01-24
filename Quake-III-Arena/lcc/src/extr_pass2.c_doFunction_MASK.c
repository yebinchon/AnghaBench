#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  TYPE_5__* rcc_interface_ty ;
struct TYPE_19__ {int /*<<< orphan*/ * next; } ;
struct TYPE_13__ {int /*<<< orphan*/ ** callee; } ;
struct TYPE_14__ {TYPE_1__ f; } ;
struct TYPE_18__ {int defined; TYPE_2__ u; } ;
struct TYPE_15__ {int f; int /*<<< orphan*/  ncalls; int /*<<< orphan*/  codelist; int /*<<< orphan*/  callee; int /*<<< orphan*/  caller; } ;
struct TYPE_16__ {TYPE_3__ rcc_Function; } ;
struct TYPE_17__ {TYPE_4__ v; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* function ) (TYPE_6__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/ * Symbol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC ; 
 TYPE_11__* IR ; 
 int /*<<< orphan*/  LABELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_6__* cfunc ; 
 TYPE_8__ codehead ; 
 TYPE_8__* codelist ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/ * labels ; 
 int /*<<< orphan*/ ** FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(rcc_interface_ty in) {
	int i, n;
	Symbol *caller, *callee;

	/*
	 Initialize:
	  define the function symbol,
	  initialize callee and caller arrays.
	*/
	cfunc = FUNC10(in->v.rcc_Function.f);
	labels = FUNC9(NULL, LABELS);
	FUNC3();
	n = FUNC1(in->v.rcc_Function.caller);
	caller = FUNC7(n + 1, sizeof *caller, FUNC);
	for (i = 0; i < n; i++) {
		int *uid = FUNC2(in->v.rcc_Function.caller);
		caller[i] = FUNC10(*uid);
		FUNC5(uid);
	}
	caller[i] = NULL;
	FUNC0(&in->v.rcc_Function.caller);
	callee = FUNC7(n + 1, sizeof *callee, FUNC);
	for (i = 0; i < n; i++) {
		int *uid = FUNC2(in->v.rcc_Function.callee);
		callee[i] = FUNC10(*uid);
		FUNC5(uid);
	}
	callee[i] = NULL;
	FUNC0(&in->v.rcc_Function.callee);
	cfunc->u.f.callee = callee;
	cfunc->defined = 1;
	/*
	 Initialize the code list,
	  traverse the interfaces inside the function;
	  each call appends code list entries.
	*/
	codelist = &codehead;
	codelist->next = NULL;
	n = FUNC1(in->v.rcc_Function.codelist);
	for (i = 0; i < n; i++)
		FUNC6(FUNC2(in->v.rcc_Function.codelist));
	FUNC0(&in->v.rcc_Function.codelist);
	/*
	 Call the back end,
	 Wrap-up.
	*/
	FUNC4();
	(*IR->function)(cfunc, caller, callee, in->v.rcc_Function.ncalls);
	cfunc = NULL;
	labels = NULL;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_18__ {int size; struct TYPE_18__* type; } ;
struct TYPE_16__ {char* name; TYPE_2__* regnode; } ;
struct TYPE_14__ {scalar_t__ seg; } ;
struct TYPE_17__ {scalar_t__ sclass; scalar_t__ scope; TYPE_3__ x; int /*<<< orphan*/  name; TYPE_1__ u; TYPE_6__* type; scalar_t__ structarg; scalar_t__ computed; scalar_t__ generated; } ;
struct TYPE_15__ {int number; scalar_t__ set; } ;
struct TYPE_13__ {int /*<<< orphan*/  wants_argb; } ;
typedef  TYPE_4__* Symbol ;

/* Variables and functions */
 scalar_t__ AUTO ; 
 scalar_t__ BSS ; 
 scalar_t__ EXTERN ; 
 scalar_t__ FREG ; 
 scalar_t__ GLOBAL ; 
 TYPE_12__* IR ; 
 scalar_t__ LOCAL ; 
 int /*<<< orphan*/  N_FUN ; 
 int N_GSYM ; 
 int /*<<< orphan*/  N_LCSYM ; 
 int N_LSYM ; 
 int N_PSYM ; 
 int /*<<< orphan*/  N_RSYM ; 
 int /*<<< orphan*/  N_STSYM ; 
 scalar_t__ PARAM ; 
 scalar_t__ REGISTER ; 
 scalar_t__ STATIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_6__*) ; 
 TYPE_6__* FUNC2 (TYPE_6__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 scalar_t__ FUNC4 (TYPE_6__*) ; 
 scalar_t__ FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 

void FUNC7(Symbol p) {
	int code, tc, sz = p->type->size;

	if (p->generated || p->computed)
		return;
	if (FUNC3(p->type)) {
		FUNC6(".stabs \"%s:%c%d\",%d,0,0,%s\n", p->name,
			p->sclass == STATIC ? 'f' : 'F', FUNC1(FUNC2(p->type)),
			N_FUN, p->x.name);
		return;
	}
	if (!IR->wants_argb && p->scope == PARAM && p->structarg) {
		FUNC0(FUNC4(p->type) && FUNC5(p->type->type));
		tc = FUNC1(p->type->type);
		sz = p->type->type->size;
	} else
		tc = FUNC1(p->type);
	if (p->sclass == AUTO && p->scope == GLOBAL || p->sclass == EXTERN) {
		FUNC6(".stabs \"%s:G", p->name);
		code = N_GSYM;
	} else if (p->sclass == STATIC) {
		FUNC6(".stabs \"%s:%c%d\",%d,0,0,%s\n", p->name, p->scope == GLOBAL ? 'S' : 'V',
			tc, p->u.seg == BSS ? N_LCSYM : N_STSYM, p->x.name);
		return;
	} else if (p->sclass == REGISTER) {
		if (p->x.regnode) {
			int r = p->x.regnode->number;
			if (p->x.regnode->set == FREG)
				r += 32;	/* floating point */
				FUNC6(".stabs \"%s:%c%d\",%d,0,", p->name,
					p->scope == PARAM ? 'P' : 'r', tc, N_RSYM);
			FUNC6("%d,%d\n", sz, r);
		}
		return;
	} else if (p->scope == PARAM) {
		FUNC6(".stabs \"%s:p", p->name);
		code = N_PSYM;
	} else if (p->scope >= LOCAL) {
		FUNC6(".stabs \"%s:", p->name);
		code = N_LSYM;
	} else
		FUNC0(0);
	FUNC6("%d\",%d,0,0,%s\n", tc, code,
		p->scope >= PARAM && p->sclass != EXTERN ? p->x.name : "0");
}
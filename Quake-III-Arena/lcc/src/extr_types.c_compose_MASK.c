#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* Type ;
struct TYPE_22__ {int oldstyle; TYPE_3__** proto; } ;
struct TYPE_23__ {TYPE_1__ f; } ;
struct TYPE_24__ {int op; int size; TYPE_2__ u; struct TYPE_24__* type; int /*<<< orphan*/  align; } ;
typedef  int /*<<< orphan*/ * List ;

/* Variables and functions */
#define  ARRAY 132 
#define  CONST 131 
#define  FUNCTION 130 
 int /*<<< orphan*/  PERM ; 
#define  POINTER 129 
#define  VOLATILE 128 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__* FUNC3 (TYPE_3__*,TYPE_3__**,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__** FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (int const,TYPE_3__*) ; 
 TYPE_3__* FUNC9 (TYPE_3__*) ; 

Type FUNC10(Type ty1, Type ty2) {
	if (ty1 == ty2)
		return ty1;
	FUNC2(ty1->op == ty2->op);
	switch (ty1->op) {
	case POINTER:
		return FUNC7(FUNC10(ty1->type, ty2->type));
	case CONST+VOLATILE:
		return FUNC8(CONST, FUNC8(VOLATILE,
			FUNC10(ty1->type, ty2->type)));
	case CONST: case VOLATILE:
		return FUNC8(ty1->op, FUNC10(ty1->type, ty2->type));
	case ARRAY:    { Type ty = FUNC10(ty1->type, ty2->type);
			 if (ty1->size && (ty1->type->size && ty2->size == 0 || ty1->size == ty2->size))
			 	return FUNC1(ty, ty1->size/ty1->type->size, ty1->align);
			 if (ty2->size && ty2->type->size && ty1->size == 0)
			 	return FUNC1(ty, ty2->size/ty2->type->size, ty2->align);
			 return FUNC1(ty, 0, 0);    }
	case FUNCTION: { Type *p1  = ty1->u.f.proto, *p2 = ty2->u.f.proto;
			 Type ty   = FUNC10(ty1->type, ty2->type);
			 List tlist = NULL;
			 if (p1 == NULL && p2 == NULL)
			 	return FUNC3(ty, NULL, 1);
			 if (p1 && p2 == NULL)
			 	return FUNC3(ty, p1, ty1->u.f.oldstyle);
			 if (p2 && p1 == NULL)
			 	return FUNC3(ty, p2, ty2->u.f.oldstyle);
			 for ( ; *p1 && *p2; p1++, p2++) {
			 	Type ty = FUNC10(FUNC9(*p1), FUNC9(*p2));
			 	if (FUNC4(*p1)    || FUNC4(*p2))
			 		ty = FUNC8(CONST, ty);
			 	if (FUNC5(*p1) || FUNC5(*p2))
			 		ty = FUNC8(VOLATILE, ty);
			 	tlist = FUNC0(ty, tlist);
			 }
			 FUNC2(*p1 == NULL && *p2 == NULL);
			 return FUNC3(ty, FUNC6(&tlist, PERM), 0); }
	}
	FUNC2(0); return NULL;
}
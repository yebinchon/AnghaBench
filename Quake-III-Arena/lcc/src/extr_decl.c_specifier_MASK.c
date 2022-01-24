#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* Type ;
struct TYPE_30__ {TYPE_2__* type; } ;
struct TYPE_29__ {TYPE_1__* type; int /*<<< orphan*/  size; } ;
struct TYPE_28__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
#define  AUTO 147 
 int Aflag ; 
#define  CHAR 146 
#define  CONST 145 
#define  DOUBLE 144 
#define  ENUM 143 
#define  EXTERN 142 
#define  FLOAT 141 
 int /*<<< orphan*/  GLOBAL ; 
#define  ID 140 
#define  INT 139 
#define  LONG 138 
#define  REGISTER 137 
#define  SHORT 136 
#define  SIGNED 135 
#define  STATIC 134 
#define  STRUCT 133 
#define  TYPEDEF 132 
#define  UNION 131 
#define  UNSIGNED 130 
#define  VOID 129 
#define  VOLATILE 128 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 () ; 
 TYPE_2__* inttype ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  level ; 
 TYPE_2__* longdouble ; 
 TYPE_2__* longlong ; 
 TYPE_2__* longtype ; 
 TYPE_2__* FUNC7 (int const,TYPE_2__*) ; 
 TYPE_2__* shorttype ; 
 TYPE_2__* signedchar ; 
 int /*<<< orphan*/  src ; 
 TYPE_2__* FUNC8 (int) ; 
 int t ; 
 TYPE_4__* tsym ; 
 TYPE_2__* FUNC9 (TYPE_2__*) ; 
 TYPE_2__* unsignedchar ; 
 TYPE_2__* unsignedlong ; 
 TYPE_2__* unsignedlonglong ; 
 TYPE_2__* unsignedshort ; 
 TYPE_2__* unsignedtype ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_2__*) ; 

__attribute__((used)) static Type FUNC12(int *sclass) {
	int cls, cons, sign, size, type, vol;
	Type ty = NULL;

	cls = vol = cons = sign = size = type = 0;
	if (sclass == NULL)
		cls = AUTO;
	for (;;) {
		int *p, tt = t;
		switch (t) {
		case AUTO:
		case REGISTER: if (level <= GLOBAL && cls == 0)
		               	FUNC1("invalid use of `%k'\n", t);
		               p = &cls;  t = FUNC2();      break;
		case STATIC: case EXTERN:
		case TYPEDEF:  p = &cls;  t = FUNC2();      break;
		case CONST:    p = &cons; t = FUNC2();      break;
		case VOLATILE: p = &vol;  t = FUNC2();      break;
		case SIGNED:
		case UNSIGNED: p = &sign; t = FUNC2();      break;
		case LONG:     if (size == LONG) {
		                       size = 0;
		                       tt = LONG+LONG;
		               }
		               p = &size; t = FUNC2();      break;
		case SHORT:    p = &size; t = FUNC2();      break;
		case VOID: case CHAR: case INT: case FLOAT:
		case DOUBLE:   p = &type; ty = tsym->type;
		                          t = FUNC2();      break;
		case ENUM:     p = &type; ty = FUNC0();    break;
		case STRUCT:
		case UNION:    p = &type; ty = FUNC8(t); break;
		case ID:
			if (FUNC5(t, tsym) && type == 0
			&& sign == 0 && size == 0) {
				FUNC10(tsym, src);
				ty = tsym->type;
				if (FUNC4(ty)
				&& ty->size != ty->type->size) {
					ty = FUNC9(ty);
					if (FUNC3(tsym->type))
						ty = FUNC7(CONST, ty);
					if (FUNC6(tsym->type))
						ty = FUNC7(VOLATILE, ty);
					tsym->type = ty;
				}
				p = &type;
				t = FUNC2();
			} else
				p = NULL;
			break;
		default: p = NULL;
		}
		if (p == NULL)
			break;
		if (*p)
			FUNC1("invalid use of `%k'\n", tt);
		*p = tt;
	}
	if (sclass)
		*sclass = cls;
	if (type == 0) {
		type = INT;
		ty = inttype;
	}
	if (size == SHORT     && type != INT
	||  size == LONG+LONG && type != INT
	||  size == LONG      && type != INT && type != DOUBLE
	||  sign && type != INT && type != CHAR)
		FUNC1("invalid type specification\n");
	if (type == CHAR && sign)
		ty = sign == UNSIGNED ? unsignedchar : signedchar;
	else if (size == SHORT)
		ty = sign == UNSIGNED ? unsignedshort : shorttype;
	else if (size == LONG && type == DOUBLE)
		ty = longdouble;
	else if (size == LONG+LONG) {
		ty = sign == UNSIGNED ? unsignedlonglong : longlong;
		if (Aflag >= 1)
			FUNC11("`%t' is a non-ANSI type\n", ty);
	} else if (size == LONG)
		ty = sign == UNSIGNED ? unsignedlong : longtype;
	else if (sign == UNSIGNED && type == INT)
		ty = unsignedtype;
	if (cons == CONST)
		ty = FUNC7(CONST, ty);
	if (vol  == VOLATILE)
		ty = FUNC7(VOLATILE, ty);
	return ty;
}
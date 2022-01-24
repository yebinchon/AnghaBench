#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Type ;
typedef  TYPE_2__* Tree ;
struct TYPE_22__ {TYPE_1__* type; } ;
struct TYPE_21__ {scalar_t__ size; struct TYPE_21__* type; } ;

/* Variables and functions */
 int Aflag ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_1__* inttype ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_1__*,TYPE_1__*) ; 

Type FUNC11(Type xty, Tree e) {
	Type yty = FUNC9(e->type);

	xty = FUNC9(xty);
	if (FUNC3(xty))
		xty = xty->type;
	if (xty->size == 0 || yty->size == 0)
		return NULL;
	if ( FUNC1(xty) && FUNC1(yty)
	||  FUNC6(xty) && xty == yty)
		return xty;
	if (FUNC5(xty) && FUNC4(e))
		return xty;
	if ((FUNC7(xty) && FUNC5(yty)
	  || FUNC5(xty)     && FUNC7(yty))
	&& (  (FUNC2(xty->type)    || !FUNC2(yty->type))
	   && (FUNC8(xty->type) || !FUNC8(yty->type))))
		return xty;

	if ((FUNC5(xty) && FUNC5(yty)
	    && FUNC0(FUNC9(xty->type), FUNC9(yty->type), 1))
	&&  (  (FUNC2(xty->type)    || !FUNC2(yty->type))
	    && (FUNC8(xty->type) || !FUNC8(yty->type))))
		return xty;
	if (FUNC5(xty) && FUNC5(yty)
	&& (  (FUNC2(xty->type)    || !FUNC2(yty->type))
	   && (FUNC8(xty->type) || !FUNC8(yty->type)))) {
		Type lty = FUNC9(xty->type), rty = FUNC9(yty->type);
		if (FUNC3(lty) && rty == inttype
		||  FUNC3(rty) && lty == inttype) {
			if (Aflag >= 1)
				FUNC10("assignment between `%t' and `%t' is compiler-dependent\n",
					xty, yty);
			return xty;
		}
	}
	return NULL;
}
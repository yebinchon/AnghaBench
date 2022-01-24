#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  r; int /*<<< orphan*/  cp; } ;
struct TYPE_7__ {TYPE_1__ u1; } ;
typedef  TYPE_2__ Reinst ;

/* Variables and functions */
 int /*<<< orphan*/  CAT ; 
 int CCLASS ; 
 int NCCLASS ; 
 int RUNE ; 
 scalar_t__ TRUE ; 
 scalar_t__ lastwasand ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  yyclassp ; 
 int /*<<< orphan*/  yyrune ; 

__attribute__((used)) static	void
FUNC3(int t)
{
	Reinst *i;

	if(lastwasand)
		FUNC1(CAT);	/* catenate is implicit */
	i = FUNC0(t);

	if(t == CCLASS || t == NCCLASS)
		i->u1.cp = yyclassp;
	if(t == RUNE)
		i->u1.r = yyrune;

	FUNC2(i, i);
	lastwasand = TRUE;
}
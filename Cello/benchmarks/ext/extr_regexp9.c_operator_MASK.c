#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int CAT ; 
 scalar_t__ FALSE ; 
 int LBRA ; 
 scalar_t__ NSUBEXP ; 
 int PLUS ; 
 int QUEST ; 
 int RBRA ; 
 int STAR ; 
 scalar_t__ TRUE ; 
 scalar_t__ cursubid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ lastwasand ; 
 scalar_t__ nbra ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static	void
FUNC3(int t)
{
	if(t==RBRA && --nbra<0)
		FUNC2("unmatched right paren");
	if(t==LBRA){
		if(++cursubid >= NSUBEXP)
			FUNC2 ("too many subexpressions");
		nbra++;
		if(lastwasand)
			FUNC3(CAT);
	} else
		FUNC0(t);
	if(t != RBRA)
		FUNC1(t);
	lastwasand = FALSE;
	if(t==STAR || t==QUEST || t==PLUS || t==RBRA)
		lastwasand = TRUE;	/* these look like operands */
}
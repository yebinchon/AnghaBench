#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int type; int subtype; } ;
typedef  TYPE_1__ token_t ;
typedef  int /*<<< orphan*/  source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC3(source_t *source, int type, int subtype, token_t *token)
{
	token_t tok;

	if (!FUNC1(source, &tok)) return qfalse;
	//if the type matches
	if (tok.type == type &&
			(tok.subtype & subtype) == subtype)
	{
		FUNC0(token, &tok, sizeof(token_t));
		return qtrue;
	} //end if
	//
	FUNC2(source, &tok);
	return qfalse;
}
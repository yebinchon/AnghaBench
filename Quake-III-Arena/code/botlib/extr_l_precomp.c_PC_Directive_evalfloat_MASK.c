#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int subtype; int /*<<< orphan*/  type; int /*<<< orphan*/  string; scalar_t__ linescrossed; int /*<<< orphan*/  endwhitespace_p; int /*<<< orphan*/  whitespace_p; int /*<<< orphan*/  line; } ;
typedef  TYPE_2__ token_t ;
struct TYPE_11__ {TYPE_1__* scriptstack; } ;
typedef  TYPE_3__ source_t ;
struct TYPE_9__ {int /*<<< orphan*/  script_p; int /*<<< orphan*/  line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,double*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int TT_DECIMAL ; 
 int TT_FLOAT ; 
 int TT_LONG ; 
 int /*<<< orphan*/  TT_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 double FUNC3 (double) ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,double) ; 

int FUNC5(source_t *source)
{
	double value;
	token_t token;

	if (!FUNC0(source, NULL, &value, qfalse)) return qfalse;
	token.line = source->scriptstack->line;
	token.whitespace_p = source->scriptstack->script_p;
	token.endwhitespace_p = source->scriptstack->script_p;
	token.linescrossed = 0;
	FUNC4(token.string, "%1.2f", FUNC3(value));
	token.type = TT_NUMBER;
	token.subtype = TT_FLOAT|TT_LONG|TT_DECIMAL;
	FUNC1(source, &token);
	if (value < 0) FUNC2(source);
	return qtrue;
}
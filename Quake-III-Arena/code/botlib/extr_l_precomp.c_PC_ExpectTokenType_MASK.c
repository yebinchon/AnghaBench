#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int type; int subtype; int /*<<< orphan*/  string; } ;
typedef  TYPE_1__ token_t ;
typedef  int /*<<< orphan*/  source_t ;

/* Variables and functions */
 int MAX_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int TT_BINARY ; 
 int TT_DECIMAL ; 
 int TT_FLOAT ; 
 int TT_HEX ; 
 int TT_INTEGER ; 
 int TT_LITERAL ; 
 int TT_LONG ; 
 int TT_NAME ; 
 int TT_NUMBER ; 
 int TT_OCTAL ; 
 int TT_PUNCTUATION ; 
 int TT_STRING ; 
 int TT_UNSIGNED ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

int FUNC4(source_t *source, int type, int subtype, token_t *token)
{
	char str[MAX_TOKEN];

	if (!FUNC0(source, token))
	{
		FUNC1(source, "couldn't read expected token");
		return qfalse;
	} //end if

	if (token->type != type)
	{
		FUNC3(str, "");
		if (type == TT_STRING) FUNC3(str, "string");
		if (type == TT_LITERAL) FUNC3(str, "literal");
		if (type == TT_NUMBER) FUNC3(str, "number");
		if (type == TT_NAME) FUNC3(str, "name");
		if (type == TT_PUNCTUATION) FUNC3(str, "punctuation");
		FUNC1(source, "expected a %s, found %s", str, token->string);
		return qfalse;
	} //end if
	if (token->type == TT_NUMBER)
	{
		if ((token->subtype & subtype) != subtype)
		{
			if (subtype & TT_DECIMAL) FUNC3(str, "decimal");
			if (subtype & TT_HEX) FUNC3(str, "hex");
			if (subtype & TT_OCTAL) FUNC3(str, "octal");
			if (subtype & TT_BINARY) FUNC3(str, "binary");
			if (subtype & TT_LONG) FUNC2(str, " long");
			if (subtype & TT_UNSIGNED) FUNC2(str, " unsigned");
			if (subtype & TT_FLOAT) FUNC2(str, " float");
			if (subtype & TT_INTEGER) FUNC2(str, " integer");
			FUNC1(source, "expected %s, found %s", str, token->string);
			return qfalse;
		} //end if
	} //end if
	else if (token->type == TT_PUNCTUATION)
	{
		if (token->subtype != subtype)
		{
			FUNC1(source, "found %s", token->string);
			return qfalse;
		} //end if
	} //end else if
	return qtrue;
}
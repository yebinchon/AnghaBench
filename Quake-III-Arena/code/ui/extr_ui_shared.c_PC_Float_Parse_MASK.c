#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int qboolean ;
struct TYPE_3__ {char* string; scalar_t__ type; float floatvalue; } ;
typedef  TYPE_1__ pc_token_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 scalar_t__ TT_NUMBER ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 

qboolean FUNC2(int handle, float *f) {
	pc_token_t token;
	int negative = qfalse;

	if (!FUNC1(handle, &token))
		return qfalse;
	if (token.string[0] == '-') {
		if (!FUNC1(handle, &token))
			return qfalse;
		negative = qtrue;
	}
	if (token.type != TT_NUMBER) {
		FUNC0(handle, "expected float but found %s\n", token.string);
		return qfalse;
	}
	if (negative)
		*f = -token.floatvalue;
	else
		*f = token.floatvalue;
	return qtrue;
}
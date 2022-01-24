#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  string; } ;
typedef  TYPE_1__ token_t ;
typedef  int /*<<< orphan*/  script_t ;
struct TYPE_8__ {void* value; void* key; } ;
typedef  TYPE_2__ epair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int) ; 
 int MAX_KEY ; 
 int MAX_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

epair_t *FUNC8(script_t *script)
{
	epair_t *e;
	token_t token;

	e = FUNC1(sizeof(epair_t));
	FUNC6 (e, 0, sizeof(epair_t));
	
	FUNC2(script, &token);
	FUNC3(token.string);
	if (FUNC7(token.string) >= MAX_KEY-1)
		FUNC0 ("ParseEpair: token %s too long", token.string);
	e->key = FUNC5(token.string);
	FUNC2(script, &token);
	FUNC3(token.string);
	if (FUNC7(token.string) >= MAX_VALUE-1)
		FUNC0 ("ParseEpair: token %s too long", token.string);
	e->value = FUNC5(token.string);

	// strip trailing spaces
	FUNC4(e->key);
	FUNC4(e->value);

	return e;
}
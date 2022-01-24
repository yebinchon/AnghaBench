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
struct TYPE_3__ {char* filename; int line; scalar_t__ buffer; scalar_t__ end_p; scalar_t__ script_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char*,void**) ; 
 size_t MAX_INCLUDES ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 TYPE_1__* script ; 
 TYPE_1__* scriptstack ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5( const char *filename ) {
	int            size;

	script++;
	if (script == &scriptstack[MAX_INCLUDES])
		FUNC0 ("script file exceeded MAX_INCLUDES");
	FUNC4 (script->filename, FUNC1 (filename) );

	size = FUNC2 (script->filename, (void **)&script->buffer);

	FUNC3 ("entering %s\n", script->filename);

	script->line = 1;

	script->script_p = script->buffer;
	script->end_p = script->buffer + size;
}
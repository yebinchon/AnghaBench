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
struct TYPE_3__ {char* buffer; int line; char* script_p; char* end_p; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t MAX_INCLUDES ; 
 void* endofscript ; 
 void* qfalse ; 
 TYPE_1__* script ; 
 TYPE_1__* scriptstack ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* tokenready ; 

void FUNC2 (char *buffer, int size)
{
	script = scriptstack;
	script++;
	if (script == &scriptstack[MAX_INCLUDES])
		FUNC0 ("script file exceeded MAX_INCLUDES");
	FUNC1 (script->filename, "memory buffer" );

	script->buffer = buffer;
	script->line = 1;
	script->script_p = script->buffer;
	script->end_p = script->buffer + size;

	endofscript = qfalse;
	tokenready = qfalse;
}
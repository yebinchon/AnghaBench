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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  name ; 
 scalar_t__ num_entities ; 
 char* source ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 

void FUNC7( void ) {
	char out[1024];

	FUNC6 (out, "%s.bsp", source);
	FUNC0 (out);
	num_entities = 0;

	FUNC1 (name);
	FUNC3 ();
	FUNC2 ();

	FUNC4 ();

	FUNC5 (out);
}
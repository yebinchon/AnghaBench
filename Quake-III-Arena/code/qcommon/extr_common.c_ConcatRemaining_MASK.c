#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* completionField ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char const*) ; 

__attribute__((used)) static void FUNC4( const char *src, const char *start ) {
	char *str;

	str = FUNC3(src, start);
	if (!str) {
		FUNC1();
		return;
	}

	str += FUNC2(start);
	FUNC0( completionField->buffer, sizeof( completionField->buffer ), str);
}
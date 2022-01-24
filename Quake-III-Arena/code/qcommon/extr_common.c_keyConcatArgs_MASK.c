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
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* completionField ; 

__attribute__((used)) static void FUNC3( void ) {
	int		i;
	char	*arg;

	for ( i = 1 ; i < FUNC0() ; i++ ) {
		FUNC2( completionField->buffer, sizeof( completionField->buffer ), " " );
		arg = FUNC1( i );
		while (*arg) {
			if (*arg == ' ') {
				FUNC2( completionField->buffer, sizeof( completionField->buffer ),  "\"");
				break;
			}
			arg++;
		}
		FUNC2( completionField->buffer, sizeof( completionField->buffer ),  FUNC1( i ) );
		if (*arg == ' ') {
			FUNC2( completionField->buffer, sizeof( completionField->buffer ),  "\"");
		}
	}
}
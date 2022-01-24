#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* buffer; scalar_t__ cursor; } ;
typedef  TYPE_1__ field_t ;

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FindMatches ; 
 int /*<<< orphan*/  PrintMatches ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 TYPE_1__* completionField ; 
 char* completionString ; 
 int matchCount ; 
 scalar_t__* shortestMatch ; 
 scalar_t__ FUNC10 (char*) ; 

void FUNC11( field_t *field ) {
	field_t		temp;

	completionField = field;

	// only look at the first token for completion purposes
	FUNC3( completionField->buffer );

	completionString = FUNC1(0);
	if ( completionString[0] == '\\' || completionString[0] == '/' ) {
		completionString++;
	}
	matchCount = 0;
	shortestMatch[0] = 0;

	if ( FUNC10( completionString ) == 0 ) {
		return;
	}

	FUNC2( FindMatches );
	FUNC8( FindMatches );

	if ( matchCount == 0 ) {
		return;	// no matches
	}

	FUNC4(&temp, completionField, sizeof(field_t));

	if ( matchCount == 1 ) {
		FUNC6( completionField->buffer, sizeof( completionField->buffer ), "\\%s", shortestMatch );
		if ( FUNC0() == 1 ) {
			FUNC9( completionField->buffer, sizeof( completionField->buffer ), " " );
		} else {
			FUNC7( temp.buffer, completionString );
		}
		completionField->cursor = FUNC10( completionField->buffer );
		return;
	}

	// multiple matches, complete to shortest
	FUNC6( completionField->buffer, sizeof( completionField->buffer ), "\\%s", shortestMatch );
	completionField->cursor = FUNC10( completionField->buffer );
	FUNC7( temp.buffer, completionString );

	FUNC5( "]%s\n", completionField->buffer );

	// run through again, printing matches
	FUNC2( PrintMatches );
	FUNC8( PrintMatches );
}
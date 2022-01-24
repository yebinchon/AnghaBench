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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  qfalse ; 
 char const* s_token ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static void FUNC3( void (*parser)( const char *token ) )
{
	int indent = 0;

	while ( FUNC0( qfalse ) )
	{
		if ( !FUNC2( s_token, "{" ) )
		{
			indent++;
		}
		else if ( !FUNC2( s_token, "}" ) )
		{
			--indent;
			if ( indent == 0 )
				break;
			else if ( indent < 0 )
				FUNC1( "Unexpected '}'" );
		}
		else
		{
			if ( parser )
				parser( s_token );
		}
	}
}
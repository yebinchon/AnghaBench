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
typedef  int /*<<< orphan*/  bots ;

/* Variables and functions */
 scalar_t__ BOT_BEGIN_DELAY_INCREMENT ; 
 int /*<<< orphan*/  EXEC_INSERT ; 
 int MAX_INFO_VALUE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/ * podium1 ; 
 int /*<<< orphan*/ * podium2 ; 
 int /*<<< orphan*/ * podium3 ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 float FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,float,int) ; 

__attribute__((used)) static void FUNC5( char *botList, int baseDelay ) {
	char		*bot;
	char		*p;
	float		skill;
	int			delay;
	char		bots[MAX_INFO_VALUE];

	podium1 = NULL;
	podium2 = NULL;
	podium3 = NULL;

	skill = FUNC2( "g_spSkill" );
	if( skill < 1 ) {
		FUNC1( "g_spSkill", "1" );
		skill = 1;
	}
	else if ( skill > 5 ) {
		FUNC1( "g_spSkill", "5" );
		skill = 5;
	}

	FUNC0( bots, botList, sizeof(bots) );
	p = &bots[0];
	delay = baseDelay;
	while( *p ) {
		//skip spaces
		while( *p && *p == ' ' ) {
			p++;
		}
		if( !p ) {
			break;
		}

		// mark start of bot name
		bot = p;

		// skip until space of null
		while( *p && *p != ' ' ) {
			p++;
		}
		if( *p ) {
			*p++ = 0;
		}

		// we must add the bot this way, calling G_AddBot directly at this stage
		// does "Bad Things"
		FUNC3( EXEC_INSERT, FUNC4("addbot %s %f free %i\n", bot, skill, delay) );

		delay += BOT_BEGIN_DELAY_INCREMENT;
	}
}
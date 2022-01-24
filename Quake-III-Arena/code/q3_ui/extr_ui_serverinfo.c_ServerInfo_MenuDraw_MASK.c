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
struct TYPE_2__ {int numlines; char* info; int /*<<< orphan*/  menu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**,char*,char*) ; 
 int MAX_INFO_KEY ; 
 int MAX_INFO_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int SCREEN_HEIGHT ; 
 double SCREEN_WIDTH ; 
 int SMALLCHAR_HEIGHT ; 
 int /*<<< orphan*/  FUNC3 (double,int,char*,int,int /*<<< orphan*/ ) ; 
 int UI_LEFT ; 
 int UI_RIGHT ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  color_red ; 
 TYPE_1__ s_serverinfo ; 
 int /*<<< orphan*/  text_color_normal ; 

__attribute__((used)) static void FUNC4( void )
{
	const char		*s;
	char			key[MAX_INFO_KEY];
	char			value[MAX_INFO_VALUE];
	int				y;

	y = SCREEN_HEIGHT/2 - s_serverinfo.numlines*(SMALLCHAR_HEIGHT)/2 - 20;
	s = s_serverinfo.info;
	while ( s ) {
		FUNC0( &s, key, value );
		if ( !key[0] ) {
			break;
		}

		FUNC2( key, MAX_INFO_KEY, ":" ); 

		FUNC3(SCREEN_WIDTH*0.50 - 8,y,key,UI_RIGHT|UI_SMALLFONT,color_red);
		FUNC3(SCREEN_WIDTH*0.50 + 8,y,value,UI_LEFT|UI_SMALLFONT,text_color_normal);

		y += SMALLCHAR_HEIGHT;
	}

	FUNC1( &s_serverinfo.menu );
}
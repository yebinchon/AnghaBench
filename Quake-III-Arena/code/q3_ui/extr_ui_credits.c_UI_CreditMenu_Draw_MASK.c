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
 double PROP_HEIGHT ; 
 double PROP_SMALL_SIZE_SCALE ; 
 scalar_t__ SMALLCHAR_HEIGHT ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*,int,int /*<<< orphan*/ ) ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  color_red ; 
 int /*<<< orphan*/  color_white ; 

__attribute__((used)) static void FUNC2( void ) {
	int		y;

	y = 12;
	FUNC0( 320, y, "id Software is:", UI_CENTER|UI_SMALLFONT, color_white );

	y += 1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Programming", UI_CENTER|UI_SMALLFONT, color_white );
	y += PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "John Carmack, Robert A. Duffy, Jim Dose'", UI_CENTER|UI_SMALLFONT, color_white );

	y += 1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Art", UI_CENTER|UI_SMALLFONT, color_white );
	y += PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Adrian Carmack, Kevin Cloud,", UI_CENTER|UI_SMALLFONT, color_white );
	y += PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Kenneth Scott, Seneca Menard, Fred Nilsson", UI_CENTER|UI_SMALLFONT, color_white );

	y += 1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Game Designer", UI_CENTER|UI_SMALLFONT, color_white );
	y += PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Graeme Devine", UI_CENTER|UI_SMALLFONT, color_white );

	y += 1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Level Design", UI_CENTER|UI_SMALLFONT, color_white );
	y += PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Tim Willits, Christian Antkow, Paul Jaquays", UI_CENTER|UI_SMALLFONT, color_white );

	y += 1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "CEO", UI_CENTER|UI_SMALLFONT, color_white );
	y += PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Todd Hollenshead", UI_CENTER|UI_SMALLFONT, color_white );

	y += 1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Director of Business Development", UI_CENTER|UI_SMALLFONT, color_white );
	y += PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Marty Stratton", UI_CENTER|UI_SMALLFONT, color_white );

	y += 1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Biz Assist and id Mom", UI_CENTER|UI_SMALLFONT, color_white );
	y += PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Donna Jackson", UI_CENTER|UI_SMALLFONT, color_white );

	y += 1.42 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Development Assistance", UI_CENTER|UI_SMALLFONT, color_white );
	y += PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC0( 320, y, "Eric Webb", UI_CENTER|UI_SMALLFONT, color_white );

	y += 1.35 * PROP_HEIGHT * PROP_SMALL_SIZE_SCALE;
	FUNC1( 320, y, "To order: 1-800-idgames     www.quake3arena.com     www.idsoftware.com", UI_CENTER|UI_SMALLFONT, color_red );
	y += SMALLCHAR_HEIGHT;
	FUNC1( 320, y, "Quake III Arena(c) 1999-2000, Id Software, Inc.  All Rights Reserved", UI_CENTER|UI_SMALLFONT, color_red );
}
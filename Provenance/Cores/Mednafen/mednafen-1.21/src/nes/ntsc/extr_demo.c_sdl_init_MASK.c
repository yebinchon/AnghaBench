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
struct TYPE_2__ {int w; int h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_INIT_VIDEO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_Quit ; 
 int /*<<< orphan*/  SDL_SWSURFACE ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__ rect ; 
 int /*<<< orphan*/  screen ; 
 int /*<<< orphan*/  surface ; 

void FUNC5( int width, int height, int depth )
{
	rect.w = width;
	rect.h = height;
	
	if ( FUNC1( SDL_INIT_VIDEO ) < 0 )
		FUNC4( "SDL initialization failed" );
	FUNC3( SDL_Quit );
	
	screen = FUNC2( width, height, 0, 0 );
	surface = FUNC0( SDL_SWSURFACE, width, height, depth, 0, 0, 0, 0 );
	if ( !screen || !surface )
		FUNC4( "SDL initialization failed" );
}
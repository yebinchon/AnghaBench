#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* centerPrint; int centerPrintY; int centerPrintLines; int centerPrintCharWidth; int /*<<< orphan*/  centerPrintTime; } ;
struct TYPE_3__ {int value; } ;

/* Variables and functions */
 int BIGCHAR_HEIGHT ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 float* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,double,float*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ITEM_TEXTSTYLE_SHADOWEDMORE ; 
 int SCREEN_WIDTH ; 
 TYPE_2__ cg ; 
 TYPE_1__ cg_centertime ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC6 (float*) ; 

__attribute__((used)) static void FUNC7( void ) {
	char	*start;
	int		l;
	int		x, y, w;
#ifdef MISSIONPACK // bk010221 - unused else
  int h;
#endif
	float	*color;

	if ( !cg.centerPrintTime ) {
		return;
	}

	color = FUNC2( cg.centerPrintTime, 1000 * cg_centertime.value );
	if ( !color ) {
		return;
	}

	FUNC6( color );

	start = cg.centerPrint;

	y = cg.centerPrintY - cg.centerPrintLines * BIGCHAR_HEIGHT / 2;

	while ( 1 ) {
		char linebuffer[1024];

		for ( l = 0; l < 50; l++ ) {
			if ( !start[l] || start[l] == '\n' ) {
				break;
			}
			linebuffer[l] = start[l];
		}
		linebuffer[l] = 0;

#ifdef MISSIONPACK
		w = CG_Text_Width(linebuffer, 0.5, 0);
		h = CG_Text_Height(linebuffer, 0.5, 0);
		x = (SCREEN_WIDTH - w) / 2;
		CG_Text_Paint(x, y + h, 0.5, color, linebuffer, 0, 0, ITEM_TEXTSTYLE_SHADOWEDMORE);
		y += h + 6;
#else
		w = cg.centerPrintCharWidth * FUNC1( linebuffer );

		x = ( SCREEN_WIDTH - w ) / 2;

		FUNC0( x, y, linebuffer, color, qfalse, qtrue,
			cg.centerPrintCharWidth, (int)(cg.centerPrintCharWidth * 1.5), 0 );

		y += cg.centerPrintCharWidth * 1.5;
#endif
		while ( *start && ( *start != '\n' ) ) {
			start++;
		}
		if ( !*start ) {
			break;
		}
		start++;
	}

	FUNC6( NULL );
}
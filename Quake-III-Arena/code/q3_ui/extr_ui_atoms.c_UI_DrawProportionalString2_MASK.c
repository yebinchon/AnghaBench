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
typedef  int /*<<< orphan*/ * vec4_t ;
typedef  int /*<<< orphan*/  qhandle_t ;
struct TYPE_2__ {int scale; int bias; } ;

/* Variables and functions */
 scalar_t__ PROP_GAP_WIDTH ; 
 scalar_t__ PROP_HEIGHT ; 
 scalar_t__ PROP_SPACE_WIDTH ; 
 int** propMap ; 
 int /*<<< orphan*/  FUNC0 (float,float,float,float,float,float,float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ uis ; 

__attribute__((used)) static void FUNC2( int x, int y, const char* str, vec4_t color, float sizeScale, qhandle_t charset )
{
	const char* s;
	unsigned char	ch; // bk001204 - unsigned
	float	ax;
	float	ay;
	float	aw = 0; // bk001204 - init
	float	ah;
	float	frow;
	float	fcol;
	float	fwidth;
	float	fheight;

	// draw the colored text
	FUNC1( color );
	
	ax = x * uis.scale + uis.bias;
	ay = y * uis.scale;

	s = str;
	while ( *s )
	{
		ch = *s & 127;
		if ( ch == ' ' ) {
			aw = (float)PROP_SPACE_WIDTH * uis.scale * sizeScale;
		}
		else if ( propMap[ch][2] != -1 ) {
			fcol = (float)propMap[ch][0] / 256.0f;
			frow = (float)propMap[ch][1] / 256.0f;
			fwidth = (float)propMap[ch][2] / 256.0f;
			fheight = (float)PROP_HEIGHT / 256.0f;
			aw = (float)propMap[ch][2] * uis.scale * sizeScale;
			ah = (float)PROP_HEIGHT * uis.scale * sizeScale;
			FUNC0( ax, ay, aw, ah, fcol, frow, fcol+fwidth, frow+fheight, charset );
		}

		ax += (aw + (float)PROP_GAP_WIDTH * uis.scale * sizeScale);
		s++;
	}

	FUNC1( NULL );
}
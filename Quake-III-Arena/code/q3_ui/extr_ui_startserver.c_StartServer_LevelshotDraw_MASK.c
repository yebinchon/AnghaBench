#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int x; int y; int id; int flags; scalar_t__ name; } ;
struct TYPE_5__ {int width; int height; void* focusshader; TYPE_1__ generic; void* shader; scalar_t__ focuspic; scalar_t__ errorpic; } ;
typedef  TYPE_2__ menubitmap_s ;
struct TYPE_6__ {int page; int /*<<< orphan*/ * maplist; } ;

/* Variables and functions */
 int ID_PICTURES ; 
 int MAX_MAPSPERPAGE ; 
 int QMF_HIGHLIGHT ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  colorBlack ; 
 int /*<<< orphan*/  color_orange ; 
 TYPE_3__ s_startserver ; 
 void* FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4( void *self ) {
	menubitmap_s	*b;
	int				x;
	int				y;
	int				w;
	int				h;
	int				n;

	b = (menubitmap_s *)self;

	if( !b->generic.name ) {
		return;
	}

	if( b->generic.name && !b->shader ) {
		b->shader = FUNC3( b->generic.name );
		if( !b->shader && b->errorpic ) {
			b->shader = FUNC3( b->errorpic );
		}
	}

	if( b->focuspic && !b->focusshader ) {
		b->focusshader = FUNC3( b->focuspic );
	}

	x = b->generic.x;
	y = b->generic.y;
	w = b->width;
	h =	b->height;
	if( b->shader ) {
		FUNC0( x, y, w, h, b->shader );
	}

	x = b->generic.x;
	y = b->generic.y + b->height;
	FUNC2( x, y, b->width, 28, colorBlack );

	x += b->width / 2;
	y += 4;
	n = s_startserver.page * MAX_MAPSPERPAGE + b->generic.id - ID_PICTURES;
	FUNC1( x, y, s_startserver.maplist[n], UI_CENTER|UI_SMALLFONT, color_orange );

	x = b->generic.x;
	y = b->generic.y;
	w = b->width;
	h =	b->height + 28;
	if( b->generic.flags & QMF_HIGHLIGHT ) {	
		FUNC0( x, y, w, h, b->focusshader );
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  menutext_s ;
typedef  int /*<<< orphan*/  menuslider_s ;
typedef  int /*<<< orphan*/  menuradiobutton_s ;
typedef  int /*<<< orphan*/  menulist_s ;
struct TYPE_8__ {int nitems; scalar_t__* items; } ;
typedef  TYPE_1__ menuframework_s ;
typedef  int /*<<< orphan*/  menufield_s ;
struct TYPE_9__ {int flags; int type; int left; int top; int right; int bottom; int /*<<< orphan*/  (* statusbar ) (void*) ;int /*<<< orphan*/  (* ownerdraw ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ menucommon_s ;
typedef  int /*<<< orphan*/  menubitmap_s ;
typedef  int /*<<< orphan*/  menuaction_s ;
struct TYPE_10__ {scalar_t__ debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  MTYPE_ACTION 137 
#define  MTYPE_BITMAP 136 
#define  MTYPE_BTEXT 135 
#define  MTYPE_FIELD 134 
#define  MTYPE_PTEXT 133 
#define  MTYPE_RADIOBUTTON 132 
#define  MTYPE_SCROLLLIST 131 
#define  MTYPE_SLIDER 130 
#define  MTYPE_SPINCONTROL 129 
#define  MTYPE_TEXT 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int QMF_HASMOUSEFOCUS ; 
 int QMF_HIDDEN ; 
 int QMF_INACTIVE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  colorWhite ; 
 int /*<<< orphan*/  colorYellow ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_3__ uis ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 

void FUNC16( menuframework_s *menu )
{
	int				i;
	menucommon_s	*itemptr;

	// draw menu
	for (i=0; i<menu->nitems; i++)
	{
		itemptr = (menucommon_s*)menu->items[i];

		if (itemptr->flags & QMF_HIDDEN)
			continue;

		if (itemptr->ownerdraw)
		{
			// total subclassing, owner draws everything
			itemptr->ownerdraw( itemptr );
		}	
		else 
		{
			switch (itemptr->type)
			{	
				case MTYPE_RADIOBUTTON:
					FUNC6( (menuradiobutton_s*)itemptr );
					break;

				case MTYPE_FIELD:
					FUNC3( (menufield_s*)itemptr );
					break;
		
				case MTYPE_SLIDER:
					FUNC8( (menuslider_s*)itemptr );
					break;
 
				case MTYPE_SPINCONTROL:
					FUNC9( (menulist_s*)itemptr );
					break;
		
				case MTYPE_ACTION:
					FUNC0( (menuaction_s*)itemptr );
					break;
		
				case MTYPE_BITMAP:
					FUNC2( (menubitmap_s*)itemptr );
					break;

				case MTYPE_TEXT:
					FUNC10( (menutext_s*)itemptr );
					break;

				case MTYPE_SCROLLLIST:
					FUNC7( (menulist_s*)itemptr );
					break;
				
				case MTYPE_PTEXT:
					FUNC5( (menutext_s*)itemptr );
					break;

				case MTYPE_BTEXT:
					FUNC1( (menutext_s*)itemptr );
					break;

				default:
					FUNC14( FUNC15("Menu_Draw: unknown type %d", itemptr->type) );
			}
		}
#ifndef NDEBUG
		if( uis.debug ) {
			int	x;
			int	y;
			int	w;
			int	h;

			if( !( itemptr->flags & QMF_INACTIVE ) ) {
				x = itemptr->left;
				y = itemptr->top;
				w = itemptr->right - itemptr->left + 1;
				h =	itemptr->bottom - itemptr->top + 1;

				if (itemptr->flags & QMF_HASMOUSEFOCUS) {
					FUNC11(x, y, w, h, colorYellow );
				}
				else {
					FUNC11(x, y, w, h, colorWhite );
				}
			}
		}
#endif
	}

	itemptr = FUNC4( menu );
	if ( itemptr && itemptr->statusbar)
		itemptr->statusbar( ( void * ) itemptr );
}
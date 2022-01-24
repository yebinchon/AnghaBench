#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_22__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec4_t ;
struct TYPE_27__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_4__ rectDef_t ;
struct TYPE_28__ {int /*<<< orphan*/  fadeCycle; int /*<<< orphan*/  fadeClamp; int /*<<< orphan*/  fadeAmount; } ;
typedef  TYPE_5__ menuDef_t ;
struct TYPE_26__ {float x; float y; scalar_t__ w; scalar_t__ h; } ;
struct TYPE_25__ {int w; int h; float x; float y; } ;
struct TYPE_23__ {scalar_t__ x; scalar_t__ y; scalar_t__ w; scalar_t__ h; } ;
struct TYPE_30__ {int flags; scalar_t__ nextTime; scalar_t__ offsetTime; scalar_t__ ownerDrawFlags; TYPE_3__ rectEffects; TYPE_2__ rectClient; TYPE_1__ rectEffects2; } ;
struct TYPE_29__ {int cvarFlags; int type; TYPE_7__ window; scalar_t__ parent; } ;
typedef  TYPE_6__ itemDef_t ;
struct TYPE_24__ {scalar_t__ realTime; int /*<<< orphan*/  (* drawRect ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ;int /*<<< orphan*/  (* ownerDrawVisible ) (scalar_t__) ;} ;

/* Variables and functions */
 int CVAR_HIDE ; 
 int CVAR_SHOW ; 
 TYPE_22__* DC ; 
#define  ITEM_TYPE_BIND 141 
#define  ITEM_TYPE_BUTTON 140 
#define  ITEM_TYPE_CHECKBOX 139 
#define  ITEM_TYPE_COMBO 138 
#define  ITEM_TYPE_EDITFIELD 137 
#define  ITEM_TYPE_LISTBOX 136 
#define  ITEM_TYPE_MODEL 135 
#define  ITEM_TYPE_MULTI 134 
#define  ITEM_TYPE_NUMERICFIELD 133 
#define  ITEM_TYPE_OWNERDRAW 132 
#define  ITEM_TYPE_RADIOBUTTON 131 
#define  ITEM_TYPE_SLIDER 130 
#define  ITEM_TYPE_TEXT 129 
#define  ITEM_TYPE_YESNO 128 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 TYPE_4__* FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int M_PI ; 
 int WINDOW_INTRANSITION ; 
 int WINDOW_ORBITING ; 
 int WINDOW_TIMEDVISIBLE ; 
 int WINDOW_VISIBLE ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC13 (float) ; 
 scalar_t__ debugMode ; 
 float FUNC14 (float) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

void FUNC17(itemDef_t *item) {
  vec4_t red;
  menuDef_t *parent = (menuDef_t*)item->parent;
  red[0] = red[3] = 1;
  red[1] = red[2] = 0;

  if (item == NULL) {
    return;
  }

  if (item->window.flags & WINDOW_ORBITING) {
    if (DC->realTime > item->window.nextTime) {
      float rx, ry, a, c, s, w, h;
      
      item->window.nextTime = DC->realTime + item->window.offsetTime;
      // translate
      w = item->window.rectClient.w / 2;
      h = item->window.rectClient.h / 2;
      rx = item->window.rectClient.x + w - item->window.rectEffects.x;
      ry = item->window.rectClient.y + h - item->window.rectEffects.y;
      a = 3 * M_PI / 180;
  	  c = FUNC13(a);
      s = FUNC14(a);
      item->window.rectClient.x = (rx * c - ry * s) + item->window.rectEffects.x - w;
      item->window.rectClient.y = (rx * s + ry * c) + item->window.rectEffects.y - h;
      FUNC10(item);

    }
  }


  if (item->window.flags & WINDOW_INTRANSITION) {
    if (DC->realTime > item->window.nextTime) {
      int done = 0;
      item->window.nextTime = DC->realTime + item->window.offsetTime;
			// transition the x,y
			if (item->window.rectClient.x == item->window.rectEffects.x) {
				done++;
			} else {
				if (item->window.rectClient.x < item->window.rectEffects.x) {
					item->window.rectClient.x += item->window.rectEffects2.x;
					if (item->window.rectClient.x > item->window.rectEffects.x) {
						item->window.rectClient.x = item->window.rectEffects.x;
						done++;
					}
				} else {
					item->window.rectClient.x -= item->window.rectEffects2.x;
					if (item->window.rectClient.x < item->window.rectEffects.x) {
						item->window.rectClient.x = item->window.rectEffects.x;
						done++;
					}
				}
			}
			if (item->window.rectClient.y == item->window.rectEffects.y) {
				done++;
			} else {
				if (item->window.rectClient.y < item->window.rectEffects.y) {
					item->window.rectClient.y += item->window.rectEffects2.y;
					if (item->window.rectClient.y > item->window.rectEffects.y) {
						item->window.rectClient.y = item->window.rectEffects.y;
						done++;
					}
				} else {
					item->window.rectClient.y -= item->window.rectEffects2.y;
					if (item->window.rectClient.y < item->window.rectEffects.y) {
						item->window.rectClient.y = item->window.rectEffects.y;
						done++;
					}
				}
			}
			if (item->window.rectClient.w == item->window.rectEffects.w) {
				done++;
			} else {
				if (item->window.rectClient.w < item->window.rectEffects.w) {
					item->window.rectClient.w += item->window.rectEffects2.w;
					if (item->window.rectClient.w > item->window.rectEffects.w) {
						item->window.rectClient.w = item->window.rectEffects.w;
						done++;
					}
				} else {
					item->window.rectClient.w -= item->window.rectEffects2.w;
					if (item->window.rectClient.w < item->window.rectEffects.w) {
						item->window.rectClient.w = item->window.rectEffects.w;
						done++;
					}
				}
			}
			if (item->window.rectClient.h == item->window.rectEffects.h) {
				done++;
			} else {
				if (item->window.rectClient.h < item->window.rectEffects.h) {
					item->window.rectClient.h += item->window.rectEffects2.h;
					if (item->window.rectClient.h > item->window.rectEffects.h) {
						item->window.rectClient.h = item->window.rectEffects.h;
						done++;
					}
				} else {
					item->window.rectClient.h -= item->window.rectEffects2.h;
					if (item->window.rectClient.h < item->window.rectEffects.h) {
						item->window.rectClient.h = item->window.rectEffects.h;
						done++;
					}
				}
			}

      FUNC10(item);

      if (done == 4) {
        item->window.flags &= ~WINDOW_INTRANSITION;
      }

    }
  }

	if (item->window.ownerDrawFlags && DC->ownerDrawVisible) {
		if (!DC->ownerDrawVisible(item->window.ownerDrawFlags)) {
			item->window.flags &= ~WINDOW_VISIBLE;
		} else {
			item->window.flags |= WINDOW_VISIBLE;
		}
	}

	if (item->cvarFlags & (CVAR_SHOW | CVAR_HIDE)) {
		if (!FUNC2(item, CVAR_SHOW)) {
			return;
		}
	}

  if (item->window.flags & WINDOW_TIMEDVISIBLE) {

	}

  if (!(item->window.flags & WINDOW_VISIBLE)) {
    return;
  }

  // paint the rect first.. 
  FUNC12(&item->window, parent->fadeAmount , parent->fadeClamp, parent->fadeCycle);

  if (debugMode) {
		vec4_t color;
		rectDef_t *r = FUNC1(item);
    color[1] = color[3] = 1;
    color[0] = color[2] = 0;
    DC->drawRect(r->x, r->y, r->w, r->h, 1, color);
  }

  //DC->drawRect(item->window.rect.x, item->window.rect.y, item->window.rect.w, item->window.rect.h, 1, red);

  switch (item->type) {
    case ITEM_TYPE_OWNERDRAW:
      FUNC6(item);
      break;
    case ITEM_TYPE_TEXT:
    case ITEM_TYPE_BUTTON:
      FUNC9(item);
      break;
    case ITEM_TYPE_RADIOBUTTON:
      break;
    case ITEM_TYPE_CHECKBOX:
      break;
    case ITEM_TYPE_EDITFIELD:
    case ITEM_TYPE_NUMERICFIELD:
      FUNC8(item);
      break;
    case ITEM_TYPE_COMBO:
      break;
    case ITEM_TYPE_LISTBOX:
      FUNC3(item);
      break;
    //case ITEM_TYPE_IMAGE:
    //  Item_Image_Paint(item);
    //  break;
    case ITEM_TYPE_MODEL:
      FUNC4(item);
      break;
    case ITEM_TYPE_YESNO:
      FUNC11(item);
      break;
    case ITEM_TYPE_MULTI:
      FUNC5(item);
      break;
    case ITEM_TYPE_BIND:
      FUNC0(item);
      break;
    case ITEM_TYPE_SLIDER:
      FUNC7(item);
      break;
    default:
      break;
  }

}
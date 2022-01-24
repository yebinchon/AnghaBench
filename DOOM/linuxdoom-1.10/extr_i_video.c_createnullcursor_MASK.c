#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  function; } ;
typedef  TYPE_1__ XGCValues ;
struct TYPE_7__ {int flags; scalar_t__ red; scalar_t__ pixel; } ;
typedef  TYPE_2__ XColor ;
typedef  int /*<<< orphan*/  Window ;
typedef  int /*<<< orphan*/  Pixmap ;
typedef  int /*<<< orphan*/  GC ;
typedef  int /*<<< orphan*/  Display ;
typedef  int /*<<< orphan*/  Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  GCFunction ; 
 int /*<<< orphan*/  GXclear ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

Cursor
FUNC6
( Display*	display,
  Window	root )
{
    Pixmap cursormask;
    XGCValues xgc;
    GC gc;
    XColor dummycolour;
    Cursor cursor;

    cursormask = FUNC1(display, root, 1, 1, 1/*depth*/);
    xgc.function = GXclear;
    gc =  FUNC0(display, cursormask, GCFunction, &xgc);
    FUNC3(display, cursormask, gc, 0, 0, 1, 1);
    dummycolour.pixel = 0;
    dummycolour.red = 0;
    dummycolour.flags = 04;
    cursor = FUNC2(display, cursormask, cursormask,
				 &dummycolour,&dummycolour, 0,0);
    FUNC5(display,cursormask);
    FUNC4(display,gc);
    return cursor;
}
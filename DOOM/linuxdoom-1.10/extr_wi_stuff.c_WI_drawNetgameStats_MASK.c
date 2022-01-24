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
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  width; } ;
struct TYPE_9__ {int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB ; 
 int MAXPLAYERS ; 
 int NG_SPACINGX ; 
 int NG_STATSX ; 
 int NG_STATSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ WI_SPACINGY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * cnt_frags ; 
 int /*<<< orphan*/ * cnt_items ; 
 int /*<<< orphan*/ * cnt_kills ; 
 int /*<<< orphan*/ * cnt_secret ; 
 scalar_t__ dofrags ; 
 TYPE_1__* frags ; 
 TYPE_1__* items ; 
 TYPE_1__* kills ; 
 int me ; 
 TYPE_1__** p ; 
 TYPE_3__* percent ; 
 int /*<<< orphan*/ * playeringame ; 
 TYPE_1__* secret ; 
 TYPE_1__* star ; 

void FUNC7(void)
{
    int		i;
    int		x;
    int		y;
    int		pwidth = FUNC0(percent->width);

    FUNC6();
    
    // draw animated background
    FUNC2(); 

    FUNC3();

    // draw stat titles (top line)
    FUNC1(NG_STATSX+NG_SPACINGX-FUNC0(kills->width),
		NG_STATSY, FB, kills);

    FUNC1(NG_STATSX+2*NG_SPACINGX-FUNC0(items->width),
		NG_STATSY, FB, items);

    FUNC1(NG_STATSX+3*NG_SPACINGX-FUNC0(secret->width),
		NG_STATSY, FB, secret);
    
    if (dofrags)
	FUNC1(NG_STATSX+4*NG_SPACINGX-FUNC0(frags->width),
		    NG_STATSY, FB, frags);

    // draw stats
    y = NG_STATSY + FUNC0(kills->height);

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
	if (!playeringame[i])
	    continue;

	x = NG_STATSX;
	FUNC1(x-FUNC0(p[i]->width), y, FB, p[i]);

	if (i == me)
	    FUNC1(x-FUNC0(p[i]->width), y, FB, star);

	x += NG_SPACINGX;
	FUNC5(x-pwidth, y+10, cnt_kills[i]);	x += NG_SPACINGX;
	FUNC5(x-pwidth, y+10, cnt_items[i]);	x += NG_SPACINGX;
	FUNC5(x-pwidth, y+10, cnt_secret[i]);	x += NG_SPACINGX;

	if (dofrags)
	    FUNC4(x, y+10, cnt_frags[i], -1);

	y += WI_SPACINGY;
    }

}
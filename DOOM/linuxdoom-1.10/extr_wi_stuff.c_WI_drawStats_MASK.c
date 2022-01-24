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
struct TYPE_4__ {int /*<<< orphan*/  height; } ;
struct TYPE_3__ {int epsd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB ; 
 int SCREENWIDTH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SP_STATSX ; 
 scalar_t__ SP_STATSY ; 
 scalar_t__ SP_TIMEX ; 
 scalar_t__ SP_TIMEY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * cnt_items ; 
 int /*<<< orphan*/ * cnt_kills ; 
 int /*<<< orphan*/  cnt_par ; 
 int /*<<< orphan*/ * cnt_secret ; 
 int /*<<< orphan*/  cnt_time ; 
 int /*<<< orphan*/  items ; 
 int /*<<< orphan*/  kills ; 
 TYPE_2__** num ; 
 int /*<<< orphan*/  par ; 
 int /*<<< orphan*/  sp_secret ; 
 int /*<<< orphan*/  time ; 
 TYPE_1__* wbs ; 

void FUNC7(void)
{
    // line height
    int lh;	

    lh = (3*FUNC0(num[0]->height))/2;

    FUNC6();

    // draw animated background
    FUNC2();
    
    FUNC3();

    FUNC1(SP_STATSX, SP_STATSY, FB, kills);
    FUNC4(SCREENWIDTH - SP_STATSX, SP_STATSY, cnt_kills[0]);

    FUNC1(SP_STATSX, SP_STATSY+lh, FB, items);
    FUNC4(SCREENWIDTH - SP_STATSX, SP_STATSY+lh, cnt_items[0]);

    FUNC1(SP_STATSX, SP_STATSY+2*lh, FB, sp_secret);
    FUNC4(SCREENWIDTH - SP_STATSX, SP_STATSY+2*lh, cnt_secret[0]);

    FUNC1(SP_TIMEX, SP_TIMEY, FB, time);
    FUNC5(SCREENWIDTH/2 - SP_TIMEX, SP_TIMEY, cnt_time);

    if (wbs->epsd < 3)
    {
	FUNC1(SCREENWIDTH/2 + SP_TIMEX, SP_TIMEY, FB, par);
	FUNC5(SCREENWIDTH - SP_TIMEX, SP_TIMEY, cnt_par);
    }

}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int index; } ;
typedef  TYPE_1__ hb_title_t ;
struct TYPE_11__ {scalar_t__ cell; int /*<<< orphan*/  chapter; scalar_t__ stopped; int /*<<< orphan*/  dvdnav; int /*<<< orphan*/  list_dvd_chapter; } ;
typedef  TYPE_2__ hb_dvdnav_t ;
struct TYPE_12__ {TYPE_2__ dvdnav; } ;
typedef  TYPE_3__ hb_dvd_t ;
struct TYPE_13__ {int /*<<< orphan*/  pgn; int /*<<< orphan*/  pgcn; } ;
typedef  TYPE_4__ hb_dvd_chapter_t ;
typedef  scalar_t__ dvdnav_status_t ;

/* Variables and functions */
 scalar_t__ DVDNAV_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8( hb_dvd_t * e, hb_title_t *title, int c )
{
    hb_dvdnav_t * d = &(e->dvdnav);
    int t = title->index;
    hb_dvd_chapter_t *chapter;
    dvdnav_status_t result;

    if ( d->stopped && !FUNC5(d) )
    {
        return 0;
    }
    if (!FUNC0(d, t))
    {
        return 0;
    }
    FUNC4( d->dvdnav );
    chapter = FUNC7( d->list_dvd_chapter, c - 1);
    if (chapter != NULL)
        result = FUNC3(d->dvdnav, t, chapter->pgcn, chapter->pgn);
    else
        result = FUNC2(d->dvdnav, t, 1);
    if (result != DVDNAV_STATUS_OK)
    {
        FUNC6( "dvd: dvdnav_*_play failed - %s",
                  FUNC1(d->dvdnav) );
        return 0;
    }
    d->stopped = 0;
    d->chapter = 0;
    d->cell = 0;
    return 1;
}
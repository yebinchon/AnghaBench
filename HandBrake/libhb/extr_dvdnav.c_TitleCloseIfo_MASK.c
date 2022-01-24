#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ pgn; scalar_t__ pgcn; scalar_t__ vts; scalar_t__ title; int /*<<< orphan*/ * ifo; int /*<<< orphan*/  list_dvd_chapter; } ;
typedef  TYPE_1__ hb_dvdnav_t ;
typedef  int /*<<< orphan*/  hb_dvd_chapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(hb_dvdnav_t * d)
{
    hb_dvd_chapter_t * chapter;
    while ((chapter = FUNC2(d->list_dvd_chapter, 0)))
    {
        FUNC3(d->list_dvd_chapter, chapter );
        FUNC0(chapter);
    }
    FUNC1(&d->list_dvd_chapter);

    if (d->ifo)
    {
        FUNC4(d->ifo);
    }
    d->ifo   = NULL;
    d->title = 0;
    d->vts   = 0;
    d->pgcn  = 0;
    d->pgn   = 0;
}
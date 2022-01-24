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
typedef  int /*<<< orphan*/  hb_list_t ;
struct TYPE_3__ {int pgcn; int pgn; int index; } ;
typedef  TYPE_1__ hb_dvd_chapter_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2( hb_list_t * list, int pgcn, int pgn )
{
    int count, ii;
    hb_dvd_chapter_t * chapter;

    count = FUNC0( list );
    for (ii = 0; ii < count; ii++)
    {
        chapter = FUNC1( list, ii );
        if (chapter->pgcn == pgcn && chapter->pgn == pgn)
            return chapter->index;
    }
    return 0;
}
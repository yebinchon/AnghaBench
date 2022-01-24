#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_7__ {int duration; int index; int /*<<< orphan*/  seconds; int /*<<< orphan*/  minutes; int /*<<< orphan*/  hours; } ;
typedef  TYPE_1__ hb_title_t ;
typedef  int /*<<< orphan*/  hb_list_t ;
struct TYPE_8__ {int /*<<< orphan*/  dvdnav; } ;
typedef  TYPE_2__ hb_dvdnav_t ;
struct TYPE_9__ {TYPE_2__ dvdnav; } ;
typedef  TYPE_3__ hb_dvd_t ;

/* Variables and functions */
 int /*<<< orphan*/  DVD_MENU_Escape ; 
 int /*<<< orphan*/  DVD_MENU_Root ; 
 int /*<<< orphan*/  DVD_MENU_Title ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7( hb_dvd_t * e, hb_list_t * list_title )
{
    hb_dvdnav_t * d = &(e->dvdnav);
    int longest_root = -1;
    int longest_title = -1;
    int longest_fallback = 0;
    int ii;
    uint64_t longest_duration_root = 0;
    uint64_t longest_duration_title = 0;
    uint64_t longest_duration_fallback = 0;
    uint64_t avg_duration = 0;
    int avg_cnt = 0;
    hb_title_t * title;
    int index;

    FUNC2( 2, "dvdnav: Searching menus for main feature" );
    for ( ii = 0; ii < FUNC3( list_title ); ii++ )
    {
        title = FUNC4( list_title, ii );
        if ( title->duration > longest_duration_fallback )
        {
            longest_duration_fallback = title->duration;
            longest_fallback = title->index;
        }
        if ( title->duration > 90000LL * 60 * 30 )
        {
            avg_duration += title->duration;
            avg_cnt++;
        }
    }
    if ( avg_cnt )
        avg_duration /= avg_cnt;

    index = FUNC1( list_title, longest_fallback );
    title = FUNC4( list_title, index );
    if ( title )
    {
        FUNC2( 2, "dvdnav: Longest title %d duration %02d:%02d:%02d",
                    longest_fallback, title->hours, title->minutes,
                    title->seconds );
    }

    FUNC0( d->dvdnav );
    if ( FUNC5( d->dvdnav, 2000 ) )
    {
        longest_root = FUNC6( d, list_title, DVD_MENU_Escape, longest_duration_fallback );
        if ( longest_root >= 0 )
        {
            index = FUNC1( list_title, longest_root );
            title = FUNC4( list_title, index );
            if ( title )
            {
                longest_duration_root = title->duration;
                FUNC2( 2, "dvdnav: Found first-play title %d duration %02d:%02d:%02d",
                            longest_root, title->hours, title->minutes, title->seconds );
            }
        }
        else
        {
            FUNC2( 2, "dvdnav: No first-play menu title found" );
        }
    }

    if ( longest_root < 0 ||
         (float)longest_duration_fallback * 0.7 > longest_duration_root)
    {
        longest_root = FUNC6( d, list_title, DVD_MENU_Root, longest_duration_fallback );
        if ( longest_root >= 0 )
        {
            index = FUNC1( list_title, longest_root );
            title = FUNC4( list_title, index );
            if ( title )
            {
                longest_duration_root = title->duration;
                FUNC2( 2, "dvdnav: Found root title %d duration %02d:%02d:%02d",
                            longest_root, title->hours, title->minutes, title->seconds );
            }
        }
        else
        {
            FUNC2( 2, "dvdnav: No root menu title found" );
        }
    }

    if ( longest_root < 0 ||
         (float)longest_duration_fallback * 0.7 > longest_duration_root)
    {
        longest_title = FUNC6( d, list_title, DVD_MENU_Title, longest_duration_fallback );
        if ( longest_title >= 0 )
        {
            index = FUNC1( list_title, longest_title );
            title = FUNC4( list_title, index );
            if ( title )
            {
                longest_duration_title = title->duration;
                FUNC2( 2, "dvdnav: found title %d duration %02d:%02d:%02d",
                            longest_title, title->hours, title->minutes,
                            title->seconds );
            }
        }
        else
        {
            FUNC2( 2, "dvdnav: No title menu title found" );
        }
    }

    uint64_t longest_duration;
    int longest;

    if ( longest_duration_root > longest_duration_title )
    {
        longest_duration = longest_duration_root;
        longest = longest_root;
    }
    else
    {
        longest_duration = longest_duration_title;
        longest = longest_title;
    }
    if ((float)longest_duration_fallback * 0.7 > longest_duration &&
        longest_duration < 90000LL * 60 * 30 )
    {
        float factor = (float)avg_duration / longest_duration;
        if ( factor > 1 )
            factor = 1 / factor;
        if ( avg_cnt > 10 && factor < 0.7 )
        {
            longest = longest_fallback;
            FUNC2( 2, "dvdnav: Using longest title %d", longest );
        }
    }
    return longest;
}
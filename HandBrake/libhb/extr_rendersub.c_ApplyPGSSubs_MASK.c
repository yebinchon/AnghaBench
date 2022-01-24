#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  sub_list; } ;
typedef  TYPE_3__ hb_filter_private_t ;
struct TYPE_18__ {scalar_t__ start; } ;
struct TYPE_17__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_20__ {TYPE_2__ s; TYPE_1__ f; } ;
typedef  TYPE_4__ hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_4__*,TYPE_4__*) ; 
 TYPE_4__* FUNC1 (TYPE_3__*,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static void FUNC6( hb_filter_private_t * pv, hb_buffer_t * buf )
{
    int index;
    hb_buffer_t * old_sub;
    hb_buffer_t * sub;

    // Each PGS subtitle supersedes anything that preceded it.
    // Find the active subtitle (if there is one), and delete
    // everything before it.
    for( index = FUNC3( pv->sub_list ) - 1; index > 0; index-- )
    {
        sub = FUNC4( pv->sub_list, index);
        if ( sub->s.start <= buf->s.start )
        {
            while ( index > 0 )
            {
                old_sub = FUNC4( pv->sub_list, index - 1);
                FUNC5( pv->sub_list, old_sub );
                FUNC2( &old_sub );
                index--;
            }
        }
    }

    // Some PGS subtitles have no content and only serve to clear
    // the screen. If any of these are at the front of our list,
    // we can now get rid of them.
    while ( FUNC3( pv->sub_list ) > 0 )
    {
        sub = FUNC4( pv->sub_list, 0 );
        if (sub->f.width != 0 && sub->f.height != 0)
            break;

        FUNC5( pv->sub_list, sub );
        FUNC2( &sub );
    }

    // Check to see if there's an active subtitle, and apply it.
    if ( FUNC3( pv->sub_list ) > 0)
    {
        sub = FUNC4( pv->sub_list, 0 );
        if ( sub->s.start <= buf->s.start )
        {
            hb_buffer_t *scaled = FUNC1(pv, sub, buf);
            FUNC0( pv, buf, scaled );
            FUNC2(&scaled);
        }
    }
}
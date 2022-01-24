#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  ssaTrack; int /*<<< orphan*/  renderer; } ;
typedef  TYPE_2__ hb_filter_private_t ;
struct TYPE_15__ {int start; } ;
struct TYPE_17__ {TYPE_1__ s; } ;
typedef  TYPE_3__ hb_buffer_t ;
struct TYPE_18__ {struct TYPE_18__* next; } ;
typedef  TYPE_4__ ASS_Image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,TYPE_4__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 

__attribute__((used)) static void FUNC4( hb_filter_private_t * pv, hb_buffer_t * buf )
{
    ASS_Image *frameList;
    hb_buffer_t *sub;

    frameList = FUNC2( pv->renderer, pv->ssaTrack,
                                  buf->s.start / 90, NULL );
    if ( !frameList )
        return;

    ASS_Image *frame;
    for (frame = frameList; frame; frame = frame->next) {
        sub = FUNC1( pv, frame );
        if( sub )
        {
            FUNC0( pv, buf, sub );
            FUNC3( &sub );
        }
    }
}
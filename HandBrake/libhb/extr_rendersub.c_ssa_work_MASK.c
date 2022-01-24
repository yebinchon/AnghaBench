#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int script_initialized; int /*<<< orphan*/  ssaTrack; } ;
typedef  TYPE_3__ hb_filter_private_t ;
struct TYPE_16__ {TYPE_1__* subtitle; TYPE_3__* private_data; } ;
typedef  TYPE_4__ hb_filter_object_t ;
struct TYPE_14__ {int flags; int start; int stop; } ;
struct TYPE_17__ {TYPE_2__ s; int /*<<< orphan*/  size; scalar_t__ data; } ;
typedef  TYPE_5__ hb_buffer_t ;
struct TYPE_13__ {int /*<<< orphan*/  fifo_out; int /*<<< orphan*/  extradata_size; scalar_t__ extradata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_5__*) ; 
 int HB_BUF_FLAG_EOF ; 
 int HB_FILTER_DONE ; 
 int HB_FILTER_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__**) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( hb_filter_object_t * filter,
                     hb_buffer_t ** buf_in,
                     hb_buffer_t ** buf_out )
{
    hb_filter_private_t * pv = filter->private_data;
    hb_buffer_t * in = *buf_in;
    hb_buffer_t * sub;

    if (!pv->script_initialized)
    {
        // NOTE: The codec extradata is expected to be in MKV format
        // I would like to initialize this in ssa_post_init, but when we are
        // transcoding text subtitles to SSA, the extradata does not
        // get initialized until the decoder is initialized.  Since
        // decoder initialization happens after filter initialization,
        // we need to postpone this.
        FUNC2(pv->ssaTrack,
                                  (char*)filter->subtitle->extradata,
                                  filter->subtitle->extradata_size);
        pv->script_initialized = 1;
    }
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        *buf_in = NULL;
        *buf_out = in;
        return HB_FILTER_DONE;
    }

    // Get any pending subtitles and add them to the active
    // subtitle list
    while( ( sub = FUNC4( filter->subtitle->fifo_out ) ) )
    {
        if (sub->s.flags & HB_BUF_FLAG_EOF)
        {
            FUNC3(&sub);
            break;
        }
        // Parse MKV-SSA packet
        // SSA subtitles always have an explicit stop time, so we
        // do not need to do special processing for stop == AV_NOPTS_VALUE
        FUNC1( pv->ssaTrack, (char*)sub->data, sub->size,
                           sub->s.start / 90,
                           (sub->s.stop - sub->s.start) / 90 );
        FUNC3(&sub);
    }

    FUNC0( pv, in );
    *buf_in = NULL;
    *buf_out = in;

    return HB_FILTER_OK;
}
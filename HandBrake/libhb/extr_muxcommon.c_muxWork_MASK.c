#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {int track; TYPE_8__* mux; TYPE_9__* job; } ;
typedef  TYPE_5__ hb_work_private_t ;
struct TYPE_25__ {int* done; TYPE_5__* private_data; } ;
typedef  TYPE_6__ hb_work_object_t ;
struct TYPE_23__ {int out; int in; int flen; TYPE_3__** fifo; } ;
struct TYPE_26__ {TYPE_4__ mf; } ;
typedef  TYPE_7__ hb_track_t ;
struct TYPE_27__ {int done; scalar_t__ buffered_size; int ntracks; scalar_t__ pts; scalar_t__ interleave; int /*<<< orphan*/  mutex; TYPE_7__** track; int /*<<< orphan*/ * allEof; int /*<<< orphan*/ * eof; int /*<<< orphan*/ * rdy; int /*<<< orphan*/ * allRdy; int /*<<< orphan*/  m; } ;
typedef  TYPE_8__ hb_mux_t ;
struct TYPE_28__ {scalar_t__ pass_id; } ;
typedef  TYPE_9__ hb_job_t ;
struct TYPE_20__ {int flags; } ;
struct TYPE_19__ {TYPE_1__ s; } ;
typedef  TYPE_10__ hb_buffer_t ;
typedef  int /*<<< orphan*/  hb_bitvec_t ;
struct TYPE_21__ {scalar_t__ start; } ;
struct TYPE_22__ {TYPE_2__ s; } ;

/* Variables and functions */
 int HB_BUF_FLAG_EOF ; 
 scalar_t__ HB_PASS_ENCODE ; 
 scalar_t__ HB_PASS_ENCODE_2ND ; 
 int HB_WORK_DONE ; 
 int HB_WORK_OK ; 
 scalar_t__ MIN_BUFFERING ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_8__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_10__**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_7__*) ; 

__attribute__((used)) static int FUNC16( hb_work_object_t * w, hb_buffer_t ** buf_in,
                     hb_buffer_t ** buf_out )
{
    hb_work_private_t * pv = w->private_data;
    hb_job_t    * job = pv->job;
    hb_mux_t    * mux = pv->mux;
    hb_track_t  * track;
    int           i;
    hb_buffer_t * buf = *buf_in;

    FUNC13( mux->mutex );
    if ( mux->done )
    {
        FUNC14( mux->mutex );
        return HB_WORK_DONE;
    }

    if (buf->s.flags & HB_BUF_FLAG_EOF)
    {
        // EOF - mark this track as done
        FUNC12( &buf );
        FUNC10(mux->eof, pv->track);
        FUNC10(mux->rdy, pv->track);
    }
    else if ((job->pass_id != HB_PASS_ENCODE &&
              job->pass_id != HB_PASS_ENCODE_2ND) ||
             FUNC4(mux->eof, pv->track))
    {
        FUNC12( &buf );
    }
    else
    {
        FUNC0( pv->track, mux, buf );
    }
    *buf_in = NULL;

    if (!FUNC2(mux->rdy, mux->allRdy, mux->allRdy) &&
        !FUNC2(mux->eof, mux->allEof, mux->allEof))
    {
        FUNC14( mux->mutex );
        return HB_WORK_OK;
    }

    hb_bitvec_t *more;
    more = FUNC9(0);
    FUNC7(more, mux->rdy);
    // all tracks have at least 'interleave' ticks of data. Output
    // all that we can in 'interleave' size chunks.
    while ((FUNC2(mux->rdy, mux->allRdy, mux->allRdy) &&
            FUNC3(more) && mux->buffered_size > MIN_BUFFERING ) ||
           (FUNC6(mux->eof, mux->allEof)))
    {
        FUNC11(more);
        for ( i = 0; i < mux->ntracks; ++i )
        {
            track = mux->track[i];
            FUNC1( mux, i, mux->m );
            if ( FUNC15( track ) )
            {
                // If the track's fifo is still full, advance
                // the current interleave point and try again.
                FUNC7(mux->rdy, mux->allRdy);
                break;
            }

            // if the track is at eof or still has data that's past
            // our next interleave point then leave it marked as rdy.
            // Otherwise clear rdy.
            if (FUNC4(mux->eof, i) &&
                (track->mf.out == track->mf.in ||
                 track->mf.fifo[(track->mf.in-1) & (track->mf.flen-1)]->s.start
                     < mux->pts + mux->interleave))
            {
                FUNC5(mux->rdy, i);
            }
            if ( track->mf.out != track->mf.in )
            {
                FUNC10(more, i);
            }
        }

        // if all the tracks are at eof we're just purging their
        // remaining data -- keep going until all internal fifos are empty.
        if (FUNC6(mux->eof, mux->allEof))
        {
            for ( i = 0; i < mux->ntracks; ++i )
            {
                if ( mux->track[i]->mf.out != mux->track[i]->mf.in )
                {
                    break;
                }
            }
            if ( i >= mux->ntracks )
            {
                mux->done = 1;
                *w->done = 1;
                FUNC14( mux->mutex );
                FUNC8(&more);
                return HB_WORK_DONE;
            }
        }
        mux->pts += mux->interleave;
    }
    FUNC8(&more);

    FUNC14( mux->mutex );
    return HB_WORK_OK;
}
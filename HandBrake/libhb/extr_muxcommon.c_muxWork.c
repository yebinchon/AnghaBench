
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_24__ {int track; TYPE_8__* mux; TYPE_9__* job; } ;
typedef TYPE_5__ hb_work_private_t ;
struct TYPE_25__ {int* done; TYPE_5__* private_data; } ;
typedef TYPE_6__ hb_work_object_t ;
struct TYPE_23__ {int out; int in; int flen; TYPE_3__** fifo; } ;
struct TYPE_26__ {TYPE_4__ mf; } ;
typedef TYPE_7__ hb_track_t ;
struct TYPE_27__ {int done; scalar_t__ buffered_size; int ntracks; scalar_t__ pts; scalar_t__ interleave; int mutex; TYPE_7__** track; int * allEof; int * eof; int * rdy; int * allRdy; int m; } ;
typedef TYPE_8__ hb_mux_t ;
struct TYPE_28__ {scalar_t__ pass_id; } ;
typedef TYPE_9__ hb_job_t ;
struct TYPE_20__ {int flags; } ;
struct TYPE_19__ {TYPE_1__ s; } ;
typedef TYPE_10__ hb_buffer_t ;
typedef int hb_bitvec_t ;
struct TYPE_21__ {scalar_t__ start; } ;
struct TYPE_22__ {TYPE_2__ s; } ;


 int HB_BUF_FLAG_EOF ;
 scalar_t__ HB_PASS_ENCODE ;
 scalar_t__ HB_PASS_ENCODE_2ND ;
 int HB_WORK_DONE ;
 int HB_WORK_OK ;
 scalar_t__ MIN_BUFFERING ;
 int MoveToInternalFifos (int,TYPE_8__*,TYPE_10__*) ;
 int OutputTrackChunk (TYPE_8__*,int,int ) ;
 scalar_t__ hb_bitvec_and_cmp (int *,int *,int *) ;
 scalar_t__ hb_bitvec_any (int *) ;
 scalar_t__ hb_bitvec_bit (int *,int) ;
 int hb_bitvec_clr (int *,int) ;
 scalar_t__ hb_bitvec_cmp (int *,int *) ;
 int hb_bitvec_cpy (int *,int *) ;
 int hb_bitvec_free (int **) ;
 int * hb_bitvec_new (int ) ;
 int hb_bitvec_set (int *,int) ;
 int hb_bitvec_zero (int *) ;
 int hb_buffer_close (TYPE_10__**) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;
 scalar_t__ mf_full (TYPE_7__*) ;

__attribute__((used)) static int muxWork( hb_work_object_t * w, hb_buffer_t ** buf_in,
                     hb_buffer_t ** buf_out )
{
    hb_work_private_t * pv = w->private_data;
    hb_job_t * job = pv->job;
    hb_mux_t * mux = pv->mux;
    hb_track_t * track;
    int i;
    hb_buffer_t * buf = *buf_in;

    hb_lock( mux->mutex );
    if ( mux->done )
    {
        hb_unlock( mux->mutex );
        return HB_WORK_DONE;
    }

    if (buf->s.flags & HB_BUF_FLAG_EOF)
    {

        hb_buffer_close( &buf );
        hb_bitvec_set(mux->eof, pv->track);
        hb_bitvec_set(mux->rdy, pv->track);
    }
    else if ((job->pass_id != HB_PASS_ENCODE &&
              job->pass_id != HB_PASS_ENCODE_2ND) ||
             hb_bitvec_bit(mux->eof, pv->track))
    {
        hb_buffer_close( &buf );
    }
    else
    {
        MoveToInternalFifos( pv->track, mux, buf );
    }
    *buf_in = ((void*)0);

    if (!hb_bitvec_and_cmp(mux->rdy, mux->allRdy, mux->allRdy) &&
        !hb_bitvec_and_cmp(mux->eof, mux->allEof, mux->allEof))
    {
        hb_unlock( mux->mutex );
        return HB_WORK_OK;
    }

    hb_bitvec_t *more;
    more = hb_bitvec_new(0);
    hb_bitvec_cpy(more, mux->rdy);


    while ((hb_bitvec_and_cmp(mux->rdy, mux->allRdy, mux->allRdy) &&
            hb_bitvec_any(more) && mux->buffered_size > MIN_BUFFERING ) ||
           (hb_bitvec_cmp(mux->eof, mux->allEof)))
    {
        hb_bitvec_zero(more);
        for ( i = 0; i < mux->ntracks; ++i )
        {
            track = mux->track[i];
            OutputTrackChunk( mux, i, mux->m );
            if ( mf_full( track ) )
            {


                hb_bitvec_cpy(mux->rdy, mux->allRdy);
                break;
            }




            if (hb_bitvec_bit(mux->eof, i) &&
                (track->mf.out == track->mf.in ||
                 track->mf.fifo[(track->mf.in-1) & (track->mf.flen-1)]->s.start
                     < mux->pts + mux->interleave))
            {
                hb_bitvec_clr(mux->rdy, i);
            }
            if ( track->mf.out != track->mf.in )
            {
                hb_bitvec_set(more, i);
            }
        }



        if (hb_bitvec_cmp(mux->eof, mux->allEof))
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
                hb_unlock( mux->mutex );
                hb_bitvec_free(&more);
                return HB_WORK_DONE;
            }
        }
        mux->pts += mux->interleave;
    }
    hb_bitvec_free(&more);

    hb_unlock( mux->mutex );
    return HB_WORK_OK;
}

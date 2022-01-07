
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int script_initialized; int ssaTrack; } ;
typedef TYPE_3__ hb_filter_private_t ;
struct TYPE_16__ {TYPE_1__* subtitle; TYPE_3__* private_data; } ;
typedef TYPE_4__ hb_filter_object_t ;
struct TYPE_14__ {int flags; int start; int stop; } ;
struct TYPE_17__ {TYPE_2__ s; int size; scalar_t__ data; } ;
typedef TYPE_5__ hb_buffer_t ;
struct TYPE_13__ {int fifo_out; int extradata_size; scalar_t__ extradata; } ;


 int ApplySSASubs (TYPE_3__*,TYPE_5__*) ;
 int HB_BUF_FLAG_EOF ;
 int HB_FILTER_DONE ;
 int HB_FILTER_OK ;
 int ass_process_chunk (int ,char*,int ,int,int) ;
 int ass_process_codec_private (int ,char*,int ) ;
 int hb_buffer_close (TYPE_5__**) ;
 TYPE_5__* hb_fifo_get (int ) ;

__attribute__((used)) static int ssa_work( hb_filter_object_t * filter,
                     hb_buffer_t ** buf_in,
                     hb_buffer_t ** buf_out )
{
    hb_filter_private_t * pv = filter->private_data;
    hb_buffer_t * in = *buf_in;
    hb_buffer_t * sub;

    if (!pv->script_initialized)
    {






        ass_process_codec_private(pv->ssaTrack,
                                  (char*)filter->subtitle->extradata,
                                  filter->subtitle->extradata_size);
        pv->script_initialized = 1;
    }
    if (in->s.flags & HB_BUF_FLAG_EOF)
    {
        *buf_in = ((void*)0);
        *buf_out = in;
        return HB_FILTER_DONE;
    }



    while( ( sub = hb_fifo_get( filter->subtitle->fifo_out ) ) )
    {
        if (sub->s.flags & HB_BUF_FLAG_EOF)
        {
            hb_buffer_close(&sub);
            break;
        }



        ass_process_chunk( pv->ssaTrack, (char*)sub->data, sub->size,
                           sub->s.start / 90,
                           (sub->s.stop - sub->s.start) / 90 );
        hb_buffer_close(&sub);
    }

    ApplySSASubs( pv, in );
    *buf_in = ((void*)0);
    *buf_out = in;

    return HB_FILTER_OK;
}

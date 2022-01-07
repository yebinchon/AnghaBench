
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ status; int frame_go; int frame_completed_lock; int frame_completed; } ;
struct TYPE_16__ {TYPE_2__ post; } ;
typedef TYPE_4__ hb_filter_private_t_qsv ;
struct TYPE_17__ {scalar_t__ status; scalar_t__ chapter_time; scalar_t__ (* work ) (TYPE_5__*,TYPE_6__**,TYPE_6__**) ;int fifo_in; scalar_t__* done; int * fifo_out; scalar_t__ chapter_val; } ;
typedef TYPE_5__ hb_filter_object_t ;
struct TYPE_15__ {scalar_t__ start; scalar_t__ new_chap; } ;
struct TYPE_13__ {TYPE_4__* filter_details; } ;
struct TYPE_18__ {TYPE_3__ s; TYPE_1__ qsv_details; } ;
typedef TYPE_6__ hb_buffer_t ;


 scalar_t__ HB_FILTER_DELAY ;
 scalar_t__ HB_FILTER_DONE ;
 int hb_buffer_close (TYPE_6__**) ;
 int hb_cond_broadcast (int ) ;
 scalar_t__ hb_fifo_full_wait (int *) ;
 TYPE_6__* hb_fifo_get_wait (int ) ;
 int hb_fifo_push (int *,TYPE_6__*) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;
 scalar_t__ stub1 (TYPE_5__*,TYPE_6__**,TYPE_6__**) ;

__attribute__((used)) static void filter_loop( void * _f )
{
    hb_filter_object_t * f = _f;
    hb_buffer_t * buf_in, * buf_out = ((void*)0);

    while( !*f->done && f->status != HB_FILTER_DONE )
    {
        buf_in = hb_fifo_get_wait( f->fifo_in );
        if ( buf_in == ((void*)0) )
            continue;



        if ( buf_in->s.new_chap )
        {
            f->chapter_time = buf_in->s.start;
            f->chapter_val = buf_in->s.new_chap;

            buf_in->s.new_chap = 0;
        }
        if ( *f->done )
        {
            if( buf_in )
            {
                hb_buffer_close( &buf_in );
            }
            break;
        }

        buf_out = ((void*)0);





        f->status = f->work( f, &buf_in, &buf_out );
        if ( buf_out && f->chapter_val && f->chapter_time <= buf_out->s.start )
        {
            buf_out->s.new_chap = f->chapter_val;
            f->chapter_val = 0;
        }

        if( buf_in )
        {
            hb_buffer_close( &buf_in );
        }
        if ( buf_out && f->fifo_out == ((void*)0) )
        {
            hb_buffer_close( &buf_out );
        }
        if( buf_out )
        {
            while ( !*f->done )
            {
                if ( hb_fifo_full_wait( f->fifo_out ) )
                {
                    hb_fifo_push( f->fifo_out, buf_out );
                    buf_out = ((void*)0);
                    break;
                }
            }
        }
    }
    if ( buf_out )
    {
        hb_buffer_close( &buf_out );
    }



    while( !*f->done )
    {
        buf_in = hb_fifo_get_wait( f->fifo_in );
        if ( buf_in != ((void*)0) )
            hb_buffer_close( &buf_in );
    }
}

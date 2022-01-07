
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; scalar_t__ (* work ) (TYPE_1__*,int **,int **) ;int * fifo_in; scalar_t__* done; int * die; int name; int * fifo_out; } ;
typedef TYPE_1__ hb_work_object_t ;
typedef int hb_buffer_t ;


 scalar_t__ HB_WORK_DONE ;
 int copy_chapter (int *,int *) ;
 int hb_buffer_close (int **) ;
 int hb_deep_log (int,char*,int ) ;
 scalar_t__ hb_fifo_full_wait (int *) ;
 int * hb_fifo_get_wait (int *) ;
 int hb_fifo_push (int *,int *) ;
 int hb_yield () ;
 scalar_t__ stub1 (TYPE_1__*,int **,int **) ;

void hb_work_loop( void * _w )
{
    hb_work_object_t * w = _w;
    hb_buffer_t * buf_in = ((void*)0), * buf_out = ((void*)0);

    while ((w->die == ((void*)0) || !*w->die) && !*w->done &&
           w->status != HB_WORK_DONE)
    {

        if (w->fifo_in != ((void*)0))
        {
            buf_in = hb_fifo_get_wait( w->fifo_in );
            if ( buf_in == ((void*)0) )
                continue;
            if ( *w->done )
            {
                if( buf_in )
                {
                    hb_buffer_close( &buf_in );
                }
                break;
            }
        }


        buf_out = ((void*)0);
        w->status = w->work( w, &buf_in, &buf_out );

        copy_chapter( buf_out, buf_in );

        if( buf_in )
        {
            hb_buffer_close( &buf_in );
        }
        if ( buf_out && w->fifo_out == ((void*)0) )
        {
            hb_buffer_close( &buf_out );
        }
        if( buf_out )
        {
            while ( !*w->done )
            {
                if ( hb_fifo_full_wait( w->fifo_out ) )
                {
                    hb_fifo_push( w->fifo_out, buf_out );
                    buf_out = ((void*)0);
                    break;
                }
            }
        }
        else if (w->fifo_in == ((void*)0))
        {



            hb_yield();
        }
    }
    if ( buf_out )
    {
        hb_buffer_close( &buf_out );
    }




    hb_deep_log(3, "worker %s waiting to die", w->name);
    while ((w->die == ((void*)0) || !*w->die) &&
           !*w->done && w->fifo_in != ((void*)0))
    {
        buf_in = hb_fifo_get_wait( w->fifo_in );
        if ( buf_in != ((void*)0) )
            hb_buffer_close( &buf_in );
    }
}

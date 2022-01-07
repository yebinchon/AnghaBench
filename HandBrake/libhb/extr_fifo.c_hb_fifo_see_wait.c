
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int wait_empty; int lock; int * first; int cond_empty; } ;
typedef TYPE_1__ hb_fifo_t ;
typedef int hb_buffer_t ;


 int FIFO_TIMEOUT ;
 int hb_cond_timedwait (int ,int ,int ) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;

hb_buffer_t * hb_fifo_see_wait( hb_fifo_t * f )
{
    hb_buffer_t * b;

    hb_lock( f->lock );
    if( f->size < 1 )
    {
        f->wait_empty = 1;
        hb_cond_timedwait( f->cond_empty, f->lock, FIFO_TIMEOUT );
        if( f->size < 1 )
        {
            hb_unlock( f->lock );
            return ((void*)0);
        }
    }
    b = f->first;
    hb_unlock( f->lock );

    return b;
}

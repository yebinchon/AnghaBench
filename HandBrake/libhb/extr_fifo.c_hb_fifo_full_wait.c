
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ capacity; int wait_full; int lock; int cond_full; } ;
typedef TYPE_1__ hb_fifo_t ;


 int FIFO_TIMEOUT ;
 int hb_cond_timedwait (int ,int ,int ) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;

int hb_fifo_full_wait( hb_fifo_t * f )
{
    int result;

    hb_lock( f->lock );
    if( f->size >= f->capacity )
    {
        f->wait_full = 1;
        hb_cond_timedwait( f->cond_full, f->lock, FIFO_TIMEOUT );
    }
    result = ( f->size < f->capacity );
    hb_unlock( f->lock );
    return result;
}

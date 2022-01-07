
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int cond_full; int cond_empty; } ;
typedef TYPE_1__ hb_fifo_t ;
typedef int hb_buffer_t ;


 int hb_buffer_close (int **) ;
 int hb_cond_signal (int ) ;
 int * hb_fifo_get (TYPE_1__*) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;

void hb_fifo_flush( hb_fifo_t * f )
{
    hb_buffer_t * b;

    while( ( b = hb_fifo_get( f ) ) )
    {
        hb_buffer_close( &b );
    }
    hb_lock( f->lock );
    hb_cond_signal( f->cond_empty );
    hb_cond_signal( f->cond_full );
    hb_unlock( f->lock );

}

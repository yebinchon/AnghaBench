
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int cond_full; int cond_empty; int lock; } ;
typedef TYPE_1__ hb_fifo_t ;
typedef int hb_buffer_t ;


 int fifo_list_rem (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int hb_buffer_close (int **) ;
 int hb_cond_close (int *) ;
 int hb_deep_log (int,char*,int ) ;
 int * hb_fifo_get (TYPE_1__*) ;
 int hb_fifo_size (TYPE_1__*) ;
 int hb_lock_close (int *) ;

void hb_fifo_close( hb_fifo_t ** _f )
{
    hb_fifo_t * f = *_f;
    hb_buffer_t * b;

    if ( f == ((void*)0) )
        return;

    hb_deep_log( 2, "fifo_close: trashing %d buffer(s)", hb_fifo_size( f ) );
    while( ( b = hb_fifo_get( f ) ) )
    {
        hb_buffer_close( &b );
    }

    hb_lock_close( &f->lock );
    hb_cond_close( &f->cond_empty );
    hb_cond_close( &f->cond_full );






    free( f );

    *_f = ((void*)0);
}

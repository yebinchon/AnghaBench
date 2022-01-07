
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int lock; int * first; } ;
typedef TYPE_1__ hb_fifo_t ;
typedef int hb_buffer_t ;


 int hb_lock (int ) ;
 int hb_unlock (int ) ;

hb_buffer_t * hb_fifo_see( hb_fifo_t * f )
{
    hb_buffer_t * b;

    hb_lock( f->lock );
    if( f->size < 1 )
    {
        hb_unlock( f->lock );
        return ((void*)0);
    }
    b = f->first;
    hb_unlock( f->lock );

    return b;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; int lock; TYPE_1__* first; } ;
typedef TYPE_2__ hb_fifo_t ;
typedef int hb_buffer_t ;
struct TYPE_4__ {int * next; } ;


 int hb_lock (int ) ;
 int hb_unlock (int ) ;

hb_buffer_t * hb_fifo_see2( hb_fifo_t * f )
{
    hb_buffer_t * b;

    hb_lock( f->lock );
    if( f->size < 2 )
    {
        hb_unlock( f->lock );
        return ((void*)0);
    }
    b = f->first->next;
    hb_unlock( f->lock );

    return b;
}

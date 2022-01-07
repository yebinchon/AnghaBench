
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; TYPE_2__* first; } ;
typedef TYPE_1__ hb_fifo_t ;
struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ size; } ;
typedef TYPE_2__ hb_buffer_t ;


 int hb_lock (int ) ;
 int hb_unlock (int ) ;

int hb_fifo_size_bytes( hb_fifo_t * f )
{
    int ret = 0;
    hb_buffer_t * link;

    hb_lock( f->lock );
    link = f->first;
    while ( link )
    {
        ret += link->size;
        link = link->next;
    }
    hb_unlock( f->lock );

    return ret;
}

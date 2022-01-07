
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int capacity; int wait_full; int lock; int cond_empty; scalar_t__ wait_empty; TYPE_2__* last; TYPE_2__* first; int cond_full; int * cond_alert_full; } ;
typedef TYPE_1__ hb_fifo_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ hb_buffer_t ;


 int FIFO_TIMEOUT ;
 int hb_cond_broadcast (int *) ;
 int hb_cond_signal (int ) ;
 int hb_cond_timedwait (int ,int ,int ) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;

void hb_fifo_push_wait( hb_fifo_t * f, hb_buffer_t * b )
{
    if( !b )
    {
        return;
    }

    hb_lock( f->lock );
    if( f->size >= f->capacity )
    {
        f->wait_full = 1;
        if (f->cond_alert_full != ((void*)0))
            hb_cond_broadcast( f->cond_alert_full );
        hb_cond_timedwait( f->cond_full, f->lock, FIFO_TIMEOUT );
    }
    if( f->size > 0 )
    {
        f->last->next = b;
    }
    else
    {
        f->first = b;
    }
    f->last = b;
    f->size += 1;
    while( f->last->next )
    {
        f->size += 1;
        f->last = f->last->next;
    }
    if( f->wait_empty && f->size >= 1 )
    {
        f->wait_empty = 0;
        hb_cond_signal( f->cond_empty );
    }
    hb_unlock( f->lock );
}

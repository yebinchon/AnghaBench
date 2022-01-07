
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int capacity; int thresh; scalar_t__ buffer_size; void* cond_empty; void* cond_full; int lock; } ;
typedef TYPE_1__ hb_fifo_t ;


 TYPE_1__* calloc (int,int) ;
 int fifo_list_add (TYPE_1__*) ;
 void* hb_cond_init () ;
 int hb_lock_init () ;

hb_fifo_t * hb_fifo_init( int capacity, int thresh )
{
    hb_fifo_t * f;
    f = calloc( sizeof( hb_fifo_t ), 1 );
    f->lock = hb_lock_init();
    f->cond_full = hb_cond_init();
    f->cond_empty = hb_cond_init();
    f->capacity = capacity;
    f->thresh = thresh;
    f->buffer_size = 0;





    return f;
}

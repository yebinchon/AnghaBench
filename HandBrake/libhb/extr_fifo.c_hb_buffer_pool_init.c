
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__** pool; int alloc_list; scalar_t__ allocated; int lock; } ;
struct TYPE_3__ {int buffer_size; } ;


 size_t BUFFER_POOL_FIRST ;
 int BUFFER_POOL_LAST ;
 int BUFFER_POOL_MAX_ELEMENTS ;
 TYPE_2__ buffers ;
 void* hb_fifo_init (int,int) ;
 int hb_list_init () ;
 int hb_lock_init () ;

void hb_buffer_pool_init( void )
{
    buffers.lock = hb_lock_init();
    buffers.allocated = 0;
    int i;



    buffers.pool[BUFFER_POOL_FIRST] = hb_fifo_init(BUFFER_POOL_MAX_ELEMENTS*10, 1);
    buffers.pool[BUFFER_POOL_FIRST]->buffer_size = 1 << 10;


    for ( i = 1; i < BUFFER_POOL_FIRST; ++i )
    {
        buffers.pool[i] = buffers.pool[BUFFER_POOL_FIRST];
    }
    for ( i = BUFFER_POOL_FIRST + 1; i <= BUFFER_POOL_LAST; ++i )
    {
        buffers.pool[i] = hb_fifo_init(BUFFER_POOL_MAX_ELEMENTS, 1);
        buffers.pool[i]->buffer_size = 1 << i;
    }

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int buffer_size; } ;
typedef TYPE_1__ hb_fifo_t ;
struct TYPE_7__ {int alloc; int * data; } ;
typedef TYPE_2__ hb_buffer_t ;
struct TYPE_8__ {int lock; int allocated; } ;


 int av_free (int *) ;
 int * av_malloc (int) ;
 TYPE_5__ buffers ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;
 int memcpy (int *,int *,int) ;
 TYPE_1__* size_to_pool (int) ;

void hb_buffer_realloc( hb_buffer_t * b, int size )
{
    if ( size > b->alloc || b->data == ((void*)0) )
    {
        uint8_t * tmp;
        uint32_t orig = b->data != ((void*)0) ? b->alloc : 0;
        hb_fifo_t * buffer_pool = size_to_pool(size);

        if (buffer_pool != ((void*)0))
        {
            size = buffer_pool->buffer_size;
        }
        tmp = av_malloc(size);
        if (tmp == ((void*)0))
        {
            return;
        }
        if (b->data != ((void*)0))
        {
            memcpy(tmp, b->data, b->alloc);
            av_free(b->data);
        }
        b->data = tmp;
        b->alloc = size;

        hb_lock(buffers.lock);
        buffers.allocated += size - orig;
        hb_unlock(buffers.lock);
    }
}

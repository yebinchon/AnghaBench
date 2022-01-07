
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_16__ {int scr_sequence; void* renderOffset; void* stop; void* start; } ;
struct TYPE_17__ {int alloc; int size; TYPE_1__ s; struct TYPE_17__* data; } ;
typedef TYPE_2__ uint8_t ;
struct TYPE_18__ {int buffer_size; } ;
typedef TYPE_3__ hb_fifo_t ;
typedef TYPE_2__ hb_buffer_t ;
struct TYPE_15__ {int allocated; int lock; int alloc_list; } ;


 int AV_INPUT_BUFFER_PADDING_SIZE ;
 void* AV_NOPTS_VALUE ;
 TYPE_2__* av_malloc (int) ;
 TYPE_13__ buffers ;
 TYPE_2__* calloc (int,int) ;
 int free (TYPE_2__*) ;
 int hb_error (char*) ;
 TYPE_2__* hb_fifo_get (TYPE_3__*) ;
 int hb_list_add (int ,TYPE_2__*) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_3__* size_to_pool (int) ;

hb_buffer_t * hb_buffer_init_internal( int size )
{
    hb_buffer_t * b;





    int alloc = size + AV_INPUT_BUFFER_PADDING_SIZE;
    hb_fifo_t *buffer_pool = size_to_pool( alloc );

    if( buffer_pool )
    {
        b = hb_fifo_get( buffer_pool );

        if( b )
        {




            uint8_t *data = b->data;

            memset( b, 0, sizeof(hb_buffer_t) );
            b->alloc = buffer_pool->buffer_size;
            b->size = size;
            b->data = data;
            b->s.start = AV_NOPTS_VALUE;
            b->s.stop = AV_NOPTS_VALUE;
            b->s.renderOffset = AV_NOPTS_VALUE;
            b->s.scr_sequence = -1;






            return( b );
        }
    }




    if( !( b = calloc( sizeof( hb_buffer_t ), 1 ) ) )
    {
        hb_error( "out of memory" );
        return ((void*)0);
    }

    b->size = size;
    b->alloc = buffer_pool ? buffer_pool->buffer_size : alloc;

    if (size)
    {
        b->data = av_malloc(b->alloc);
        if( !b->data )
        {
            hb_error( "out of memory" );
            free( b );
            return ((void*)0);
        }



        hb_lock(buffers.lock);
        buffers.allocated += b->alloc;
        hb_unlock(buffers.lock);
    }
    b->s.start = AV_NOPTS_VALUE;
    b->s.stop = AV_NOPTS_VALUE;
    b->s.renderOffset = AV_NOPTS_VALUE;
    b->s.scr_sequence = -1;





    return b;
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_16__ {int scr_sequence; void* renderOffset; void* stop; void* start; } ;
struct TYPE_17__ {int alloc; int size; TYPE_1__ s; struct TYPE_17__* data; } ;
typedef  TYPE_2__ uint8_t ;
struct TYPE_18__ {int buffer_size; } ;
typedef  TYPE_3__ hb_fifo_t ;
typedef  TYPE_2__ hb_buffer_t ;
struct TYPE_15__ {int allocated; int /*<<< orphan*/  lock; int /*<<< orphan*/  alloc_list; } ;

/* Variables and functions */
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 void* AV_NOPTS_VALUE ; 
 TYPE_2__* FUNC0 (int) ; 
 TYPE_13__ buffers ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC9 (int) ; 

hb_buffer_t * FUNC10( int size )
{
    hb_buffer_t * b;
    // Certain libraries (hrm ffmpeg) expect buffers passed to them to
    // end on certain alignments (ffmpeg is 8). So allocate some extra bytes.
    // Note that we can't simply align the end of our buffer because
    // sometimes we feed data to these libraries starting from arbitrary
    // points within the buffer.
    int alloc = size + AV_INPUT_BUFFER_PADDING_SIZE;
    hb_fifo_t *buffer_pool = FUNC9( alloc );

    if( buffer_pool )
    {
        b = FUNC4( buffer_pool );

        if( b )
        {
            /*
             * Zero the contents of the buffer, would be nice if we
             * didn't have to do this.
             */
            uint8_t *data = b->data;

            FUNC8( b, 0, sizeof(hb_buffer_t) );
            b->alloc          = buffer_pool->buffer_size;
            b->size           = size;
            b->data           = data;
            b->s.start        = AV_NOPTS_VALUE;
            b->s.stop         = AV_NOPTS_VALUE;
            b->s.renderOffset = AV_NOPTS_VALUE;
            b->s.scr_sequence = -1;

#if defined(HB_BUFFER_DEBUG)
            hb_lock(buffers.lock);
            hb_list_add(buffers.alloc_list, b);
            hb_unlock(buffers.lock);
#endif
            return( b );
        }
    }

    /*
     * No existing buffers, create a new one
     */
    if( !( b = FUNC1( sizeof( hb_buffer_t ), 1 ) ) )
    {
        FUNC3( "out of memory" );
        return NULL;
    }

    b->size  = size;
    b->alloc  = buffer_pool ? buffer_pool->buffer_size : alloc;

    if (size)
    {
        b->data = FUNC0(b->alloc);
        if( !b->data )
        {
            FUNC3( "out of memory" );
            FUNC2( b );
            return NULL;
        }
#if defined(HB_BUFFER_DEBUG)
        memset(b->data, 0, b->size);
#endif
        FUNC6(buffers.lock);
        buffers.allocated += b->alloc;
        FUNC7(buffers.lock);
    }
    b->s.start        = AV_NOPTS_VALUE;
    b->s.stop         = AV_NOPTS_VALUE;
    b->s.renderOffset = AV_NOPTS_VALUE;
    b->s.scr_sequence = -1;
#if defined(HB_BUFFER_DEBUG)
    hb_lock(buffers.lock);
    hb_list_add(buffers.alloc_list, b);
    hb_unlock(buffers.lock);
#endif
    return b;
}
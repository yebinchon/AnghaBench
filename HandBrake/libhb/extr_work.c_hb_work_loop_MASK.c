#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ status; scalar_t__ (* work ) (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ;int /*<<< orphan*/ * fifo_in; scalar_t__* done; int /*<<< orphan*/ * die; int /*<<< orphan*/  name; int /*<<< orphan*/ * fifo_out; } ;
typedef  TYPE_1__ hb_work_object_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;

/* Variables and functions */
 scalar_t__ HB_WORK_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

void FUNC8( void * _w )
{
    hb_work_object_t * w = _w;
    hb_buffer_t      * buf_in = NULL, * buf_out = NULL;

    while ((w->die == NULL || !*w->die) && !*w->done &&
           w->status != HB_WORK_DONE)
    {
        // fifo_in == NULL means this is a data source (e.g. reader)
        if (w->fifo_in != NULL)
        {
            buf_in = FUNC4( w->fifo_in );
            if ( buf_in == NULL )
                continue;
            if ( *w->done )
            {
                if( buf_in )
                {
                    FUNC1( &buf_in );
                }
                break;
            }
        }
        // Invalidate buf_out so that if there is no output
        // we don't try to pass along junk.
        buf_out = NULL;
        w->status = w->work( w, &buf_in, &buf_out );

        FUNC0( buf_out, buf_in );

        if( buf_in )
        {
            FUNC1( &buf_in );
        }
        if ( buf_out && w->fifo_out == NULL )
        {
            FUNC1( &buf_out );
        }
        if( buf_out )
        {
            while ( !*w->done )
            {
                if ( FUNC3( w->fifo_out ) )
                {
                    FUNC5( w->fifo_out, buf_out );
                    buf_out = NULL;
                    break;
                }
            }
        }
        else if (w->fifo_in == NULL)
        {
            // If this work object is a generator (no input fifo) and it
            // generated no output, it may be waiting for status from
            // another thread. Yield so that we don't spin doing nothing.
            FUNC6();
        }
    }
    if ( buf_out )
    {
        FUNC1( &buf_out );
    }

    // Consume data in incoming fifo till job completes so that
    // residual data does not stall the pipeline. There can be
    // residual data during point-to-point encoding.
    FUNC2(3, "worker %s waiting to die", w->name);
    while ((w->die == NULL || !*w->die) &&
           !*w->done && w->fifo_in != NULL)
    {
        buf_in = FUNC4( w->fifo_in );
        if ( buf_in != NULL )
            FUNC1( &buf_in );
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ hb_stream_type; scalar_t__ frames; scalar_t__ errors; } ;
typedef  TYPE_1__ hb_stream_t ;

/* Variables and functions */
 scalar_t__ ffmpeg ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3( hb_stream_t ** _d )
{
    hb_stream_t *stream = * _d;

    if (stream == NULL)
    {
        return;
    }

    if ( stream->hb_stream_type == ffmpeg )
    {
        FUNC0( stream );
        FUNC2( stream );
        *_d = NULL;
        return;
    }

    if ( stream->frames )
    {
        FUNC1( "stream: %d good frames, %d errors (%.0f%%)", stream->frames,
                stream->errors, (double)stream->errors * 100. /
                (double)stream->frames );
    }

    FUNC2( stream );
    *_d = NULL;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ hb_stream_type; } ;
typedef  TYPE_1__ hb_stream_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;

/* Variables and functions */
 scalar_t__ ffmpeg ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 scalar_t__ program ; 

hb_buffer_t * FUNC3( hb_stream_t * src_stream )
{
    if ( src_stream->hb_stream_type == ffmpeg )
    {
        return FUNC0( src_stream );
    }
    if ( src_stream->hb_stream_type == program )
    {
        return FUNC1( src_stream );
    }
    return FUNC2( src_stream );
}
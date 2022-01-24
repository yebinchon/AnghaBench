#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int alloc; int count; TYPE_4__* list; } ;
struct TYPE_10__ {TYPE_1__ pes; scalar_t__ scan; } ;
typedef  TYPE_2__ hb_stream_t ;
struct TYPE_11__ {int stream_id; int next; scalar_t__ stream_kind; int /*<<< orphan*/  stream_type; int /*<<< orphan*/  stream_id_ext; } ;

/* Variables and functions */
 scalar_t__ A ; 
 scalar_t__ N ; 
 scalar_t__ S ; 
 scalar_t__ V ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__*) ; 

__attribute__((used)) static void FUNC5(hb_stream_t *stream)
{
    int i;

    if ( stream->pes.list )
    {
        for (i=0; i < stream->pes.alloc; i++)
        {
            stream->pes.list[i].stream_id = -1;
            stream->pes.list[i].next = -1;
        }
    }
    stream->pes.count = 0;

    // Find the audio and video pids in the stream
    FUNC2(stream);
    FUNC1(stream);

    if( stream->scan )
    {
        FUNC0("Found the following streams");
        FUNC0("    Video Streams : ");
        for (i=0; i < stream->pes.count; i++)
        {
            if ( stream->pes.list[i].stream_kind == V )
            {
                FUNC0( "      0x%x-0x%x type %s (0x%x)",
                        stream->pes.list[i].stream_id,
                        stream->pes.list[i].stream_id_ext,
                        FUNC4(stream,
                                         &stream->pes.list[i]),
                        stream->pes.list[i].stream_type);
            }
        }
        FUNC0("    Audio Streams : ");
        for (i = 0; i < stream->pes.count; i++)
        {
            if ( stream->pes.list[i].stream_kind == A )
            {
                FUNC0( "      0x%x-0x%x type %s (0x%x)",
                        stream->pes.list[i].stream_id,
                        stream->pes.list[i].stream_id_ext,
                        FUNC4(stream,
                                         &stream->pes.list[i]),
                        stream->pes.list[i].stream_type );
            }
        }
        FUNC0("    Subtitle Streams : ");
        for (i = 0; i < stream->pes.count; i++)
        {
            if ( stream->pes.list[i].stream_kind == S )
            {
                FUNC0( "      0x%x-0x%x type %s (0x%x)",
                        stream->pes.list[i].stream_id,
                        stream->pes.list[i].stream_id_ext,
                        FUNC4(stream,
                                         &stream->pes.list[i]),
                        stream->pes.list[i].stream_type );
            }
        }
        FUNC0("    Other Streams : ");
        for (i = 0; i < stream->pes.count; i++)
        {
            if ( stream->pes.list[i].stream_kind == N )
            {
                FUNC0( "      0x%x-0x%x type %s (0x%x)",
                        stream->pes.list[i].stream_id,
                        stream->pes.list[i].stream_id_ext,
                        FUNC4(stream,
                                         &stream->pes.list[i]),
                        stream->pes.list[i].stream_type );
                FUNC3(stream, i);
            }
        }
    }
    else
    {
        for (i = 0; i < stream->pes.count; i++)
        {
            if ( stream->pes.list[i].stream_kind == N )
                FUNC3(stream, i);
        }
    }
}
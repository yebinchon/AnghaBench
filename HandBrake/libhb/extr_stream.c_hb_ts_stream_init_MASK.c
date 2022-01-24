#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_17__ {int alloc; int count; TYPE_2__* list; int /*<<< orphan*/  packet; } ;
struct TYPE_15__ {int alloc; TYPE_8__* list; scalar_t__ count; } ;
struct TYPE_18__ {TYPE_3__ ts; TYPE_1__ pes; scalar_t__ scan; int /*<<< orphan*/  packetsize; } ;
typedef  TYPE_4__ hb_stream_t ;
struct TYPE_19__ {int stream_id; int next; } ;
struct TYPE_16__ {int continuity; int pid; int pes_list; scalar_t__ is_pcr; TYPE_13__* buf; } ;
struct TYPE_14__ {scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ A ; 
 scalar_t__ N ; 
 scalar_t__ P ; 
 scalar_t__ S ; 
 scalar_t__ V ; 
 TYPE_13__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_8__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC9(hb_stream_t *stream)
{
    int i;

    if ( stream->ts.list )
    {
        for (i=0; i < stream->ts.alloc; i++)
        {
            stream->ts.list[i].continuity = -1;
            stream->ts.list[i].pid = -1;
            stream->ts.list[i].pes_list = -1;
        }
    }
    stream->ts.count = 0;

    if ( stream->pes.list )
    {
        for (i=0; i < stream->pes.alloc; i++)
        {
            stream->pes.list[i].stream_id = -1;
            stream->pes.list[i].next = -1;
        }
    }
    stream->pes.count = 0;

    stream->ts.packet = FUNC5( stream->packetsize );

    // Find the audio and video pids in the stream
    if (FUNC4(stream) < 0)
    {
        return -1;
    }

    // hb_ts_resolve_pid_types reads some data, so the TS buffers
    // are needed here.
    for (i = 0; i < stream->ts.count; i++)
    {
        // demuxing buffer for TS to PS conversion
        stream->ts.list[i].buf = FUNC0(stream->packetsize);
        stream->ts.list[i].buf->size = 0;
    }
    FUNC3(stream);

    if( stream->scan )
    {
        FUNC1("Found the following PIDS");
        FUNC1("    Video PIDS : ");
        for (i=0; i < stream->ts.count; i++)
        {
            if ( FUNC7( stream, i ) == V )
            {
                FUNC1( "      0x%x type %s (0x%x)%s",
                        stream->ts.list[i].pid,
                        FUNC6(stream,
                                &stream->pes.list[stream->ts.list[i].pes_list]),
                        FUNC8( stream, i ),
                        stream->ts.list[i].is_pcr ? " (PCR)" : "");
            }
        }
        FUNC1("    Audio PIDS : ");
        for (i = 0; i < stream->ts.count; i++)
        {
            if ( FUNC7( stream, i ) == A )
            {
                FUNC1( "      0x%x type %s (0x%x)%s",
                        stream->ts.list[i].pid,
                        FUNC6(stream,
                                &stream->pes.list[stream->ts.list[i].pes_list]),
                        FUNC8( stream, i ),
                        stream->ts.list[i].is_pcr ? " (PCR)" : "");
            }
        }
        FUNC1("    Subtitle PIDS : ");
        for (i = 0; i < stream->ts.count; i++)
        {
            if ( FUNC7( stream, i ) == S )
            {
                FUNC1( "      0x%x type %s (0x%x)%s",
                        stream->ts.list[i].pid,
                        FUNC6(stream,
                                &stream->pes.list[stream->ts.list[i].pes_list]),
                        FUNC8( stream, i ),
                        stream->ts.list[i].is_pcr ? " (PCR)" : "");
            }
        }
        FUNC1("    Other PIDS : ");
        for (i = 0; i < stream->ts.count; i++)
        {
            if ( FUNC7( stream, i ) == N ||
                 FUNC7( stream, i ) == P )
            {
                FUNC1( "      0x%x type %s (0x%x)%s",
                        stream->ts.list[i].pid,
                        FUNC6(stream,
                                &stream->pes.list[stream->ts.list[i].pes_list]),
                        FUNC8( stream, i ),
                        stream->ts.list[i].is_pcr ? " (PCR)" : "");
            }
            if ( FUNC7( stream, i ) == N )
                FUNC2(stream, i);
        }
    }
    else
    {
        for (i = 0; i < stream->ts.count; i++)
        {
            if ( FUNC7( stream, i ) == N )
                FUNC2(stream, i);
        }
    }
    return 0;
}
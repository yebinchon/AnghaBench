#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ kind_t ;
typedef  int /*<<< orphan*/  hb_ts_stream_t ;
struct TYPE_15__ {int count; TYPE_10__* list; } ;
struct TYPE_14__ {TYPE_1__* list; } ;
struct TYPE_16__ {TYPE_3__ ts; TYPE_2__ pes; } ;
typedef  TYPE_4__ hb_stream_t ;
struct TYPE_13__ {scalar_t__ stream_kind; } ;
struct TYPE_12__ {int pid; int pes_list; int is_pcr; } ;

/* Variables and functions */
 int P ; 
 scalar_t__ V ; 
 int /*<<< orphan*/  FUNC0 (TYPE_10__*,TYPE_10__*,int) ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,int) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int) ; 
 int FUNC4 (TYPE_4__*,int,int,int,int) ; 

__attribute__((used)) static int FUNC5( hb_stream_t * stream, int pid, int stream_id_ext, int stream_type, int in_kind, int *out_pes_idx )
{
    int ii;
    int pes_idx = FUNC4( stream, pid, stream_id_ext,
                                     stream_type, in_kind );

    if ( out_pes_idx )
        *out_pes_idx = pes_idx;

    if ( pes_idx < 0 )
        return -1;

    kind_t kind = stream->pes.list[pes_idx].stream_kind;
    for ( ii = 0; ii < stream->ts.count; ii++ )
    {
        if ( pid == stream->ts.list[ii].pid )
        {
            break;
        }
        // Resolve multiple videos
        if ( kind == V && FUNC3( stream, ii ) == V &&
             pes_idx < stream->ts.list[ii].pes_list )
        {
            // We have a new candidate for the primary video.  Move
            // the current video to the end of the list. And put the
            // new video in this slot
            int jj = FUNC1( stream );
            FUNC0( &stream->ts.list[jj], &stream->ts.list[ii],
                    sizeof( hb_ts_stream_t ) );
            break;
        }
    }
    if ( ii == stream->ts.count )
        ii = FUNC1( stream );

    stream->ts.list[ii].pid = pid;
    FUNC2( stream, ii, pes_idx );
    if ( in_kind == P )
        stream->ts.list[ii].is_pcr = 1;

    return ii;
}
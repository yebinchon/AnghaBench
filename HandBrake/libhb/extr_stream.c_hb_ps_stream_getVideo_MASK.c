#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* list; } ;
struct TYPE_18__ {TYPE_2__ pes; } ;
typedef  TYPE_3__ hb_stream_t ;
struct TYPE_19__ {int stream_id; scalar_t__ pts; int /*<<< orphan*/  stream_id_ext; int /*<<< orphan*/  bd_substream_id; } ;
typedef  TYPE_4__ hb_pes_info_t ;
struct TYPE_20__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
typedef  TYPE_5__ hb_buffer_t ;
struct TYPE_16__ {scalar_t__ stream_kind; } ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  HB_DVD_READ_BUFFER_SIZE ; 
 scalar_t__ V ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__**) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,TYPE_4__*) ; 
 int FUNC3 (TYPE_3__*,TYPE_5__*) ; 
 int FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static hb_buffer_t * FUNC5(
    hb_stream_t *stream,
    hb_pes_info_t *pi)
{
    hb_buffer_t *buf  = FUNC1(HB_DVD_READ_BUFFER_SIZE);
    hb_pes_info_t pes_info;
    // how many blocks we read while searching for a video PES header
    int blksleft = 2048;

    while (--blksleft >= 0)
    {
        buf->size = 0;
        int len = FUNC3( stream, buf );
        if ( len == 0 )
        {
            // EOF
            break;
        }
        if ( !FUNC2( stream, buf->data, buf->size, &pes_info ) )
            continue;

        int idx;
        if ( pes_info.stream_id == 0xbd )
        {
            idx = FUNC4( stream, pes_info.stream_id,
                                      pes_info.bd_substream_id );
        }
        else
        {
            idx = FUNC4( stream, pes_info.stream_id,
                                      pes_info.stream_id_ext );
        }
        if ( idx >= 0 && stream->pes.list[idx].stream_kind == V )
        {
            if ( pes_info.pts != AV_NOPTS_VALUE )
            {
                *pi = pes_info;
                return buf;
            }
        }
    }
    FUNC0( &buf );
    return NULL;
}
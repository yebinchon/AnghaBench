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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int off_t ;
struct TYPE_3__ {int packetsize; int /*<<< orphan*/  file_handle; int /*<<< orphan*/  h; } ;
typedef  TYPE_1__ hb_stream_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HB_ERROR_READ ; 
 int MAX_HOLE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static off_t FUNC7(hb_stream_t *stream)
{
    uint8_t buf[MAX_HOLE];
    off_t pos = 0;
    off_t start = FUNC3(stream->file_handle);
    off_t orig;

    if ( start >= stream->packetsize ) {
        start -= stream->packetsize;
        FUNC2(stream->file_handle, start, SEEK_SET);
    }
    orig = start;

    while (1)
    {
        if (FUNC1(buf, sizeof(buf), 1, stream->file_handle) == 1)
        {
            const uint8_t *bp = buf;
            int i;

            for ( i = sizeof(buf) - 8 * stream->packetsize; --i >= 0; ++bp )
            {
                if ( FUNC4( bp, stream->packetsize, 8 ) )
                {
                    break;
                }
            }
            if ( i >= 0 )
            {
                pos = ( bp - buf ) - stream->packetsize + 188;
                break;
            }
            FUNC2(stream->file_handle, -8 * stream->packetsize, SEEK_CUR);
            start = FUNC3(stream->file_handle);
        }
        else
        {
            int err;
            if ((err = FUNC0(stream->file_handle)) != 0)
            {
                FUNC5("align_to_next_packet: error (%d)", err);
                FUNC6(stream->h, HB_ERROR_READ);
            }
            return 0;
        }
    }
    FUNC2(stream->file_handle, start+pos, SEEK_SET);
    return start - orig + pos;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_8__ {TYPE_1__* list; } ;
struct TYPE_9__ {TYPE_2__ pes; void* reg_desc; } ;
typedef  TYPE_3__ hb_stream_t ;
typedef  int /*<<< orphan*/  bitbuf_t ;
struct TYPE_7__ {int map_idx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,int,int,int,int) ; 

__attribute__((used)) static int FUNC7( hb_stream_t * stream, uint8_t *buf, int len )
{
    int retval = 1;
    bitbuf_t bb;
    FUNC3(&bb, buf, len, 0);

    if ( FUNC0(&bb) < 10 )
        return 0;

    // Skip stuff not needed
    FUNC4(&bb, 8 * 8);
    int info_len = FUNC2(&bb, 16);
    if ( FUNC0(&bb) < info_len )
        return 0;

    if ( info_len )
    {
        bitbuf_t cc;
        FUNC1( &cc, &bb, info_len );

        while ( FUNC0(&cc) >= 2 )
        {
            uint8_t tag, len;

            tag = FUNC2(&cc, 8);
            len = FUNC2(&cc, 8);
            if ( FUNC0(&cc) < len )
                return 0;

            if (tag == 0x05 && len >= 4)
            {
                // registration descriptor
                stream->reg_desc = FUNC2(&cc, 32);
                FUNC4(&cc, 8 * (len - 4));
            }
            else
            {
                FUNC4(&cc, 8 * len);
            }
        }
        FUNC4(&bb, 8 * info_len);
    }

    int map_len = FUNC2(&bb, 16);
    if ( FUNC0(&bb) < map_len )
        return 0;

    // Process the map
    int ii = 0;
    while ( FUNC0(&bb) >= 8 )
    {
        int pes_idx;
        int stream_type = FUNC2(&bb, 8);
        int stream_id = FUNC2(&bb, 8);
        info_len = FUNC2(&bb, 16);
        if ( info_len > FUNC0(&bb) )
            return 0;

        int substream_id = 0;
        switch ( stream_type )
        {
            case 0x81: // ac3
            case 0x82: // dts
            case 0x83: // lpcm
            case 0x87: // eac3
                // If the stream_id isn't one of the standard mpeg
                // stream ids, assume it is an private stream 1 substream id.
                // This is how most PS streams specify this type of audio.
                //
                // TiVo sets the stream id to 0xbd and does not
                // give a substream id.  This limits them to one audio
                // stream and differs from how everyone else specifies
                // this type of audio.
                if ( stream_id < 0xb9 )
                {
                    substream_id = stream_id;
                    stream_id = 0xbd;
                }
                break;
            default:
                break;
        }

        pes_idx = FUNC6( stream, stream_id, substream_id,
                                     stream_type, -1 );
        if ( pes_idx >= 0 )
            stream->pes.list[pes_idx].map_idx = ii;

        if ( info_len > 0 )
        {
            bitbuf_t bb_desc;
            FUNC1( &bb_desc, &bb, info_len );
            if ( pes_idx >= 0 )
                FUNC5( stream, pes_idx, &bb_desc );
            FUNC4(&bb, 8 * info_len);
        }
        ii++;
    }
    // skip CRC 32
    return retval;
}
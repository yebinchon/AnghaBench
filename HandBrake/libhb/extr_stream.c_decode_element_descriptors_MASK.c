#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_7__ {TYPE_1__* list; } ;
struct TYPE_8__ {TYPE_2__ pes; } ;
typedef  TYPE_3__ hb_stream_t ;
typedef  int /*<<< orphan*/  bitbuf_t ;
struct TYPE_6__ {int stream_type; int /*<<< orphan*/  codec_name; void* stream_kind; int /*<<< orphan*/  lang_code; void* format_id; } ;

/* Variables and functions */
 void* N ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 

__attribute__((used)) static void FUNC7(
    hb_stream_t   *stream,
    int           pes_idx,
    bitbuf_t   *bb)
{
    int ii;

    while( FUNC0( bb ) > 2 )
    {
        uint8_t tag = FUNC1(bb, 8);
        uint8_t len = FUNC1(bb, 8);
        switch ( tag )
        {
            case 5:    // Registration descriptor
                stream->pes.list[pes_idx].format_id = FUNC1(bb, 32);
                FUNC2(bb, 8 * (len - 4));
                break;

            case 10:    // ISO_639_language descriptor
            {
                char code[3];
                for (ii = 0; ii < 3; ii++)
                {
                    code[ii] = FUNC1(bb, 8);
                }
                stream->pes.list[pes_idx].lang_code =
                                    FUNC4(FUNC3(code));
                FUNC2(bb, 8 * (len - 3));
            } break;

            case 0x56:  // DVB Teletext descriptor
            {
                // We don't currently process teletext from
                // TS or PS streams.  Set stream 'kind' to N
                stream->pes.list[pes_idx].stream_type = 0x00;
                stream->pes.list[pes_idx].stream_kind = N;
                FUNC5(stream->pes.list[pes_idx].codec_name,
                        "DVB Teletext", 80);
                FUNC2(bb, 8 * len);
            } break;

            case 0x59:  // DVB Subtitleing descriptor
            {
                // We don't currently process subtitles from
                // TS or PS streams.  Set stream 'kind' to N
                stream->pes.list[pes_idx].stream_type = 0x00;
                stream->pes.list[pes_idx].stream_kind = N;
                FUNC5(stream->pes.list[pes_idx].codec_name,
                        "DVB Subtitling", 80);
                FUNC2(bb, 8 * len);
            } break;

            case 0x6a:  // DVB AC-3 descriptor
            {
                stream->pes.list[pes_idx].stream_type = 0x81;
                FUNC6( stream, pes_idx );
                FUNC2(bb, 8 * len);
            } break;

            case 0x7a:  // DVB EAC-3 descriptor
            {
                stream->pes.list[pes_idx].stream_type = 0x87;
                FUNC6( stream, pes_idx );
                FUNC2(bb, 8 * len);
            } break;

            default:
                FUNC2(bb, 8 * len);
                break;
        }
    }
}
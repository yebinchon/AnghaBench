
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* list; } ;
struct TYPE_8__ {TYPE_2__ pes; } ;
typedef TYPE_3__ hb_stream_t ;
typedef int bitbuf_t ;
struct TYPE_6__ {int stream_type; int codec_name; void* stream_kind; int lang_code; void* format_id; } ;


 void* N ;
 int bits_bytes_left (int *) ;
 void* bits_get (int *,int) ;
 int bits_skip (int *,int) ;
 int lang_for_code2 (char*) ;
 int lang_to_code (int ) ;
 int strncpy (int ,char*,int) ;
 int update_pes_kind (TYPE_3__*,int) ;

__attribute__((used)) static void decode_element_descriptors(
    hb_stream_t *stream,
    int pes_idx,
    bitbuf_t *bb)
{
    int ii;

    while( bits_bytes_left( bb ) > 2 )
    {
        uint8_t tag = bits_get(bb, 8);
        uint8_t len = bits_get(bb, 8);
        switch ( tag )
        {
            case 5:
                stream->pes.list[pes_idx].format_id = bits_get(bb, 32);
                bits_skip(bb, 8 * (len - 4));
                break;

            case 10:
            {
                char code[3];
                for (ii = 0; ii < 3; ii++)
                {
                    code[ii] = bits_get(bb, 8);
                }
                stream->pes.list[pes_idx].lang_code =
                                    lang_to_code(lang_for_code2(code));
                bits_skip(bb, 8 * (len - 3));
            } break;

            case 0x56:
            {


                stream->pes.list[pes_idx].stream_type = 0x00;
                stream->pes.list[pes_idx].stream_kind = N;
                strncpy(stream->pes.list[pes_idx].codec_name,
                        "DVB Teletext", 80);
                bits_skip(bb, 8 * len);
            } break;

            case 0x59:
            {


                stream->pes.list[pes_idx].stream_type = 0x00;
                stream->pes.list[pes_idx].stream_kind = N;
                strncpy(stream->pes.list[pes_idx].codec_name,
                        "DVB Subtitling", 80);
                bits_skip(bb, 8 * len);
            } break;

            case 0x6a:
            {
                stream->pes.list[pes_idx].stream_type = 0x81;
                update_pes_kind( stream, pes_idx );
                bits_skip(bb, 8 * len);
            } break;

            case 0x7a:
            {
                stream->pes.list[pes_idx].stream_type = 0x87;
                update_pes_kind( stream, pes_idx );
                bits_skip(bb, 8 * len);
            } break;

            default:
                bits_skip(bb, 8 * len);
                break;
        }
    }
}

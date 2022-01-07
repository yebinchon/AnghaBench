
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


struct TYPE_19__ {int found_scr; int scr; TYPE_16__* list; } ;
struct TYPE_20__ {int ts_flags; int need_keyframe; TYPE_2__ pes; int frames; int errors; } ;
typedef TYPE_3__ hb_stream_t ;
struct TYPE_21__ {int stream_id; scalar_t__ header_len; int dts; int pts; int stream_id_ext; int bd_substream_id; int scr; } ;
typedef TYPE_4__ hb_pes_info_t ;
struct TYPE_18__ {scalar_t__ type; int renderOffset; int start; int pcr; int id; } ;
struct TYPE_22__ {scalar_t__ size; scalar_t__ data; TYPE_1__ s; } ;
typedef TYPE_5__ hb_buffer_t ;
struct TYPE_17__ {int stream_kind; } ;



 scalar_t__ AUDIO_BUF ;
 int AV_NOPTS_VALUE ;
 int HB_DVD_READ_BUFFER_SIZE ;
 scalar_t__ OTHER_BUF ;
 int TS_HAS_PCR ;

 scalar_t__ VIDEO_BUF ;
 int get_id (TYPE_16__*) ;
 int hb_buffer_close (TYPE_5__**) ;
 TYPE_5__* hb_buffer_init (int ) ;
 int hb_parse_ps (TYPE_3__*,scalar_t__,scalar_t__,TYPE_4__*) ;
 int hb_ps_read_packet (TYPE_3__*,TYPE_5__*) ;
 int index_of_ps_stream (TYPE_3__*,int,int ) ;
 int isIframe (TYPE_3__*,scalar_t__,scalar_t__) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static hb_buffer_t * hb_ps_stream_decode( hb_stream_t *stream )
{
    hb_pes_info_t pes_info;
    hb_buffer_t *buf = hb_buffer_init(HB_DVD_READ_BUFFER_SIZE);

    while (1)
    {
        buf->size = 0;
        int len = hb_ps_read_packet( stream, buf );
        if ( len == 0 )
        {

            hb_buffer_close( &buf );
            return buf;
        }
        if ( !hb_parse_ps( stream, buf->data, buf->size, &pes_info ) )
        {
            ++stream->errors;
            continue;
        }

        if ( pes_info.stream_id == 0xba )
        {
            stream->pes.found_scr = 1;
            stream->ts_flags |= TS_HAS_PCR;
            stream->pes.scr = pes_info.scr;
            continue;
        }



        if ( !stream->pes.found_scr && ( stream->ts_flags & TS_HAS_PCR ) )
        {
            continue;
        }


        if ( pes_info.stream_id == 0xbb )
            continue;

        int idx;
        if ( pes_info.stream_id == 0xbd )
        {
            idx = index_of_ps_stream( stream, pes_info.stream_id,
                                      pes_info.bd_substream_id );
        }
        else
        {
            idx = index_of_ps_stream( stream, pes_info.stream_id,
                                      pes_info.stream_id_ext );
        }


        if ( idx < 0 )
            continue;

        switch (stream->pes.list[idx].stream_kind)
        {
            case 129:
                buf->s.type = AUDIO_BUF;
                break;

            case 128:
                buf->s.type = VIDEO_BUF;
                break;

            default:
                buf->s.type = OTHER_BUF;
                break;
        }

        if ( stream->need_keyframe )
        {


            if ( buf->s.type != VIDEO_BUF ||
                 !isIframe( stream, buf->data, buf->size ) )
            {


                if ( buf->s.type != VIDEO_BUF || ++stream->need_keyframe < 600 )
                {
                    continue;
                }
            }
            stream->need_keyframe = 0;
        }
        if ( buf->s.type == VIDEO_BUF )
            ++stream->frames;

        buf->s.id = get_id( &stream->pes.list[idx] );
        buf->s.pcr = stream->pes.scr;
        buf->s.start = pes_info.pts;
        buf->s.renderOffset = pes_info.dts;
        memmove( buf->data, buf->data + pes_info.header_len,
                 buf->size - pes_info.header_len );
        buf->size -= pes_info.header_len;
        if ( buf->size == 0 )
            continue;
        stream->pes.scr = AV_NOPTS_VALUE;
        return buf;
    }
}

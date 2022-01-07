
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int* data; int flags; } ;
struct TYPE_11__ {size_t ffmpeg_video_id; TYPE_4__ ffmpeg_pkt; TYPE_3__* ffmpeg_ic; } ;
typedef TYPE_5__ hb_stream_t ;
struct TYPE_9__ {TYPE_2__** streams; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {int codec_id; int* extradata; } ;




 int AV_PKT_FLAG_KEY ;

__attribute__((used)) static int ffmpeg_is_keyframe( hb_stream_t *stream )
{
    uint8_t *pkt;

    switch (stream->ffmpeg_ic->streams[stream->ffmpeg_video_id]->codecpar->codec_id)
    {
        case 129:



            pkt = stream->ffmpeg_pkt.data;
            if ( !pkt[0] && !pkt[1] && pkt[2] == 1 && pkt[3] == 0x0f )
                return 1;

            return 0;

        case 128:
            pkt = stream->ffmpeg_pkt.data;
            uint8_t *seqhdr = stream->ffmpeg_ic->streams[stream->ffmpeg_video_id]->codecpar->extradata;
            int pshift = 2;
            if ( ( seqhdr[3] & 0x02 ) == 0 )

                ++pshift;
            if ( ( seqhdr[3] & 0x80 ) == 0 )

                ++pshift;
            if ( seqhdr[3] & 0x70 )

                return ( ( pkt[0] >> pshift ) & 0x3 ) == 0x01;

            return ( ( pkt[0] >> pshift ) & 0x2 ) == 0;

        default:
            break;
    }
    return ( stream->ffmpeg_pkt.flags & AV_PKT_FLAG_KEY );
}

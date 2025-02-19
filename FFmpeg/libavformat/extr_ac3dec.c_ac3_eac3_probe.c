
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
typedef int buf3 ;
struct TYPE_3__ {int* buf; int buf_size; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AV_CODEC_ID_AC3 ;
 int AV_CODEC_ID_EAC3 ;
 int AV_CRC_16_ANSI ;
 int FFMAX (int,int) ;
 int av_ac3_parse_header (int const*,int,int*,int*) ;
 int av_assert0 (int) ;
 scalar_t__ av_crc (int ,int ,int const*,int) ;
 int av_crc_get_table (int ) ;
 int memcmp (int const*,char*,int) ;

__attribute__((used)) static int ac3_eac3_probe(const AVProbeData *p, enum AVCodecID expected_codec_id)
{
    int max_frames, first_frames = 0, frames;
    const uint8_t *buf, *buf2, *end;
    enum AVCodecID codec_id = AV_CODEC_ID_AC3;

    max_frames = 0;
    buf = p->buf;
    end = buf + p->buf_size;

    for(; buf < end; buf++) {
        if(buf > p->buf && !(buf[0] == 0x0B && buf[1] == 0x77)
                        && !(buf[0] == 0x77 && buf[1] == 0x0B) )
            continue;
        buf2 = buf;

        for(frames = 0; buf2 < end; frames++) {
            uint8_t buf3[4096];
            uint8_t bitstream_id;
            uint16_t frame_size;
            int i, ret;

            if(!memcmp(buf2, "\x1\x10", 2)) {
                if (buf2 + 16 > end)
                    break;
                buf2+=16;
            }
            if (buf[0] == 0x77 && buf[1] == 0x0B) {
                for(i=0; i<8; i+=2) {
                    buf3[i ] = buf2[i+1];
                    buf3[i+1] = buf2[i ];
                }
                ret = av_ac3_parse_header(buf3, 8, &bitstream_id,
                                          &frame_size);
            }else
                ret = av_ac3_parse_header(buf2, end - buf2, &bitstream_id,
                                          &frame_size);
            if (ret < 0)
                break;
            if(buf2 + frame_size > end)
                break;
            if (buf[0] == 0x77 && buf[1] == 0x0B) {
                av_assert0(frame_size <= sizeof(buf3));
                for(i = 8; i < frame_size; i += 2) {
                    buf3[i ] = buf2[i+1];
                    buf3[i+1] = buf2[i ];
                }
                if (av_crc(av_crc_get_table(AV_CRC_16_ANSI), 0, buf3 + 2, frame_size - 2))
                    break;
            } else {
                if (av_crc(av_crc_get_table(AV_CRC_16_ANSI), 0, buf2 + 2, frame_size - 2))
                    break;
            }
            if (bitstream_id > 10)
                codec_id = AV_CODEC_ID_EAC3;
            buf2 += frame_size;
        }
        max_frames = FFMAX(max_frames, frames);
        if(buf == p->buf)
            first_frames = frames;
    }
    if(codec_id != expected_codec_id) return 0;


    if (first_frames>=7) return AVPROBE_SCORE_EXTENSION + 1;
    else if(max_frames>200)return AVPROBE_SCORE_EXTENSION;
    else if(max_frames>=4) return AVPROBE_SCORE_EXTENSION/2;
    else if(max_frames>=1) return 1;
    else return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int buf_size; int * buf; } ;
struct TYPE_5__ {scalar_t__ frame_size; } ;
typedef TYPE_1__ MPADecodeHeader ;
typedef TYPE_2__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AV_RB32 (int const*) ;
 int FFMAX (int,int) ;
 int ID3v2_DEFAULT_MAGIC ;
 int PROBE_BUF_MAX ;
 int avpriv_mpegaudio_decode_header (TYPE_1__*,int ) ;
 scalar_t__ ff_id3v2_match (int const*,int ) ;
 int ff_id3v2_tag_len (int const*) ;

__attribute__((used)) static int mp3_read_probe(const AVProbeData *p)
{
    int max_frames, first_frames = 0;
    int whole_used = 0;
    int frames, ret;
    int framesizes, max_framesizes;
    uint32_t header;
    const uint8_t *buf, *buf0, *buf2, *end;

    buf0 = p->buf;
    end = p->buf + p->buf_size - sizeof(uint32_t);
    while (buf0 < end && !*buf0)
        buf0++;

    max_frames = 0;
    max_framesizes = 0;
    buf = buf0;

    for (; buf < end; buf = buf2+1) {
        buf2 = buf;
        for (framesizes = frames = 0; buf2 < end; frames++) {
            MPADecodeHeader h;

            header = AV_RB32(buf2);
            ret = avpriv_mpegaudio_decode_header(&h, header);
            if (ret != 0)
                break;
            buf2 += h.frame_size;
            framesizes += h.frame_size;
        }
        max_frames = FFMAX(max_frames, frames);
        max_framesizes = FFMAX(max_framesizes, framesizes);
        if (buf == buf0) {
            first_frames= frames;
            if (buf2 == end + sizeof(uint32_t))
                whole_used = 1;
        }
    }


    if (first_frames>=7) return AVPROBE_SCORE_EXTENSION + 1;
    else if (max_frames>200 && p->buf_size < 2*max_framesizes)return AVPROBE_SCORE_EXTENSION;
    else if (max_frames>=4 && p->buf_size < 2*max_framesizes) return AVPROBE_SCORE_EXTENSION / 2;
    else if (ff_id3v2_match(buf0, ID3v2_DEFAULT_MAGIC) && 2*ff_id3v2_tag_len(buf0) >= p->buf_size)
                           return p->buf_size < PROBE_BUF_MAX ? AVPROBE_SCORE_EXTENSION / 4 : AVPROBE_SCORE_EXTENSION - 2;
    else if (first_frames > 1 && whole_used) return 5;
    else if (max_frames>=1 && p->buf_size < 10*max_framesizes) return 1;
    else return 0;

}

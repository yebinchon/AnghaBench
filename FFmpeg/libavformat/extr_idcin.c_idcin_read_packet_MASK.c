#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_19__ {TYPE_3__* pb; TYPE_1__* priv_data; } ;
struct TYPE_18__ {int error; scalar_t__ eof_reached; } ;
struct TYPE_17__ {int duration; int /*<<< orphan*/  stream_index; int /*<<< orphan*/  flags; } ;
struct TYPE_16__ {int next_chunk_is_video; int current_audio_chunk; unsigned int audio_chunk_size2; unsigned int audio_chunk_size1; unsigned int block_align; scalar_t__ audio_present; int /*<<< orphan*/  audio_stream_index; int /*<<< orphan*/  video_stream_index; } ;
typedef  TYPE_1__ IdcinDemuxContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVPALETTE_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_DATA_PALETTE ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT_MAX ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*,unsigned char*,int) ; 
 unsigned int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s,
                             AVPacket *pkt)
{
    int ret;
    unsigned int command;
    unsigned int chunk_size;
    IdcinDemuxContext *idcin = s->priv_data;
    AVIOContext *pb = s->pb;
    int i;
    int palette_scale;
    unsigned char r, g, b;
    unsigned char palette_buffer[768];
    uint32_t palette[256];

    if (FUNC5(s->pb))
        return s->pb->error ? s->pb->error : AVERROR_EOF;

    if (idcin->next_chunk_is_video) {
        command = FUNC7(pb);
        if (command == 2) {
            return FUNC0(EIO);
        } else if (command == 1) {
            /* trigger a palette change */
            ret = FUNC6(pb, palette_buffer, 768);
            if (ret < 0) {
                return ret;
            } else if (ret != 768) {
                FUNC2(s, AV_LOG_ERROR, "incomplete packet\n");
                return FUNC0(EIO);
            }
            /* scale the palette as necessary */
            palette_scale = 2;
            for (i = 0; i < 768; i++)
                if (palette_buffer[i] > 63) {
                    palette_scale = 0;
                    break;
                }

            for (i = 0; i < 256; i++) {
                r = palette_buffer[i * 3    ] << palette_scale;
                g = palette_buffer[i * 3 + 1] << palette_scale;
                b = palette_buffer[i * 3 + 2] << palette_scale;
                palette[i] = (0xFFU << 24) | (r << 16) | (g << 8) | (b);
                if (palette_scale == 2)
                    palette[i] |= palette[i] >> 6 & 0x30303;
            }
        }

        if (s->pb->eof_reached) {
            FUNC2(s, AV_LOG_ERROR, "incomplete packet\n");
            return s->pb->error ? s->pb->error : AVERROR_EOF;
        }
        chunk_size = FUNC7(pb);
        if (chunk_size < 4 || chunk_size > INT_MAX - 4) {
            FUNC2(s, AV_LOG_ERROR, "invalid chunk size: %u\n", chunk_size);
            return AVERROR_INVALIDDATA;
        }
        /* skip the number of decoded bytes (always equal to width * height) */
        FUNC8(pb, 4);
        chunk_size -= 4;
        ret= FUNC1(pb, pkt, chunk_size);
        if (ret < 0)
            return ret;
        else if (ret != chunk_size) {
            FUNC2(s, AV_LOG_ERROR, "incomplete packet\n");
            FUNC4(pkt);
            return FUNC0(EIO);
        }
        if (command == 1) {
            uint8_t *pal;

            pal = FUNC3(pkt, AV_PKT_DATA_PALETTE,
                                          AVPALETTE_SIZE);
            if (!pal) {
                FUNC4(pkt);
                return FUNC0(ENOMEM);
            }
            FUNC9(pal, palette, AVPALETTE_SIZE);
            pkt->flags |= AV_PKT_FLAG_KEY;
        }
        pkt->stream_index = idcin->video_stream_index;
        pkt->duration     = 1;
    } else {
        /* send out the audio chunk */
        if (idcin->current_audio_chunk)
            chunk_size = idcin->audio_chunk_size2;
        else
            chunk_size = idcin->audio_chunk_size1;
        ret= FUNC1(pb, pkt, chunk_size);
        if (ret < 0)
            return ret;
        pkt->stream_index = idcin->audio_stream_index;
        pkt->duration     = chunk_size / idcin->block_align;

        idcin->current_audio_chunk ^= 1;
    }

    if (idcin->audio_present)
        idcin->next_chunk_is_video ^= 1;

    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_13__ {int audio_stream_index; int sample_rate; int channels; int bps; int video_stream_index; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ WsVqaDemuxContext ;
struct TYPE_17__ {int sample_rate; int bits_per_coded_sample; int channels; int /*<<< orphan*/  extradata; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_16__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_15__ {int stream_index; int duration; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {int index; TYPE_7__* codecpar; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_IMA_WS ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_S16LE ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_U8 ; 
 int /*<<< orphan*/  AV_CODEC_ID_WESTWOOD_SND1 ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  CMDS_TAG 132 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
#define  SND0_TAG 131 
#define  SND1_TAG 130 
#define  SND2_TAG 129 
 int VQA_PREAMBLE_SIZE ; 
#define  VQFR_TAG 128 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,int) ; 

__attribute__((used)) static int FUNC13(AVFormatContext *s,
                             AVPacket *pkt)
{
    WsVqaDemuxContext *wsvqa = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret = -1;
    uint8_t preamble[VQA_PREAMBLE_SIZE];
    uint32_t chunk_type;
    uint32_t chunk_size;
    int skip_byte;

    while (FUNC9(pb, preamble, VQA_PREAMBLE_SIZE) == VQA_PREAMBLE_SIZE) {
        chunk_type = FUNC1(&preamble[0]);
        chunk_size = FUNC1(&preamble[4]);

        skip_byte = chunk_size & 0x01;

        if ((chunk_type == SND0_TAG) || (chunk_type == SND1_TAG) ||
            (chunk_type == SND2_TAG) || (chunk_type == VQFR_TAG)) {

            ret= FUNC6(pb, pkt, chunk_size);
            if (ret<0)
                return FUNC0(EIO);

            switch (chunk_type) {
            case SND0_TAG:
            case SND1_TAG:
            case SND2_TAG:
                if (wsvqa->audio_stream_index == -1) {
                    AVStream *st = FUNC8(s, NULL);
                    if (!st)
                        return FUNC0(ENOMEM);

                    wsvqa->audio_stream_index = st->index;
                    if (!wsvqa->sample_rate)
                        wsvqa->sample_rate = 22050;
                    if (!wsvqa->channels)
                        wsvqa->channels = 1;
                    if (!wsvqa->bps)
                        wsvqa->bps = 8;
                    st->codecpar->sample_rate = wsvqa->sample_rate;
                    st->codecpar->bits_per_coded_sample = wsvqa->bps;
                    st->codecpar->channels = wsvqa->channels;
                    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;

                    FUNC11(st, 64, 1, st->codecpar->sample_rate);

                    switch (chunk_type) {
                    case SND0_TAG:
                        if (wsvqa->bps == 16)
                            st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE;
                        else
                            st->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
                        break;
                    case SND1_TAG:
                        st->codecpar->codec_id = AV_CODEC_ID_WESTWOOD_SND1;
                        break;
                    case SND2_TAG:
                        st->codecpar->codec_id = AV_CODEC_ID_ADPCM_IMA_WS;
                        if (FUNC12(st->codecpar, 2))
                            return FUNC0(ENOMEM);
                        FUNC3(st->codecpar->extradata, wsvqa->version);
                        break;
                    }
                }

                pkt->stream_index = wsvqa->audio_stream_index;
                switch (chunk_type) {
                case SND1_TAG:
                    /* unpacked size is stored in header */
                    if(pkt->data)
                        pkt->duration = FUNC2(pkt->data) / wsvqa->channels;
                    break;
                case SND2_TAG:
                    /* 2 samples/byte, 1 or 2 samples per frame depending on stereo */
                    pkt->duration = (chunk_size * 2) / wsvqa->channels;
                    break;
                }
                break;
            case VQFR_TAG:
                pkt->stream_index = wsvqa->video_stream_index;
                pkt->duration = 1;
                break;
            }

            /* stay on 16-bit alignment */
            if (skip_byte)
                FUNC10(pb, 1);

            return ret;
        } else {
            switch(chunk_type){
            case CMDS_TAG:
                break;
            default:
                FUNC7(s, AV_LOG_INFO, "Skipping unknown chunk %s\n",
                       FUNC5(FUNC4(chunk_type)));
            }
            FUNC10(pb, chunk_size + skip_byte);
        }
    }

    return ret;
}
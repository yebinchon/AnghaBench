#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_13__ {scalar_t__ codec_id; scalar_t__ codec_type; int codec_tag; int /*<<< orphan*/  extradata_size; int /*<<< orphan*/  extradata; } ;
struct TYPE_12__ {TYPE_2__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_11__ {int flags; TYPE_1__* audio_par; } ;
struct TYPE_10__ {int channels; scalar_t__ sample_rate; int profile; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_2__ FLVContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AV_CODEC_ID_AAC ; 
 scalar_t__ AV_CODEC_ID_H264 ; 
 scalar_t__ AV_CODEC_ID_MPEG4 ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FLV_AAC_SEQ_HEADER_DETECT ; 
 int FLV_FRAME_KEY ; 
 int FLV_TAG_TYPE_AUDIO ; 
 int FLV_TAG_TYPE_VIDEO ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__* mpeg4audio_sample_rates ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC14(AVFormatContext* s, AVCodecParameters* par, int64_t ts) {
    int64_t data_size;
    AVIOContext *pb = s->pb;
    FLVContext *flv = s->priv_data;

    if (par->codec_id == AV_CODEC_ID_AAC || par->codec_id == AV_CODEC_ID_H264
            || par->codec_id == AV_CODEC_ID_MPEG4) {
        int64_t pos;
        FUNC4(pb,
                par->codec_type == AVMEDIA_TYPE_VIDEO ?
                        FLV_TAG_TYPE_VIDEO : FLV_TAG_TYPE_AUDIO);
        FUNC5(pb, 0); // size patched later
        FUNC13(pb, ts);
        FUNC5(pb, 0); // streamid
        pos = FUNC3(pb);
        if (par->codec_id == AV_CODEC_ID_AAC) {
            FUNC4(pb, FUNC10(s, par));
            FUNC4(pb, 0); // AAC sequence header

            if (!par->extradata_size && (flv->flags & FLV_AAC_SEQ_HEADER_DETECT)) {
                PutBitContext pbc;
                int samplerate_index;
                int channels = flv->audio_par->channels
                        - (flv->audio_par->channels == 8 ? 1 : 0);
                uint8_t data[2];

                for (samplerate_index = 0; samplerate_index < 16;
                        samplerate_index++)
                    if (flv->audio_par->sample_rate
                            == mpeg4audio_sample_rates[samplerate_index])
                        break;

                FUNC11(&pbc, data, sizeof(data));
                FUNC12(&pbc, 5, flv->audio_par->profile + 1); //profile
                FUNC12(&pbc, 4, samplerate_index); //sample rate index
                FUNC12(&pbc, 4, channels);
                FUNC12(&pbc, 1, 0); //frame length - 1024 samples
                FUNC12(&pbc, 1, 0); //does not depend on core coder
                FUNC12(&pbc, 1, 0); //is not extension
                FUNC9(&pbc);

                FUNC4(pb, data[0]);
                FUNC4(pb, data[1]);

                FUNC0(s, AV_LOG_WARNING, "AAC sequence header: %02x %02x.\n",
                        data[0], data[1]);
            }
            FUNC7(pb, par->extradata, par->extradata_size);
        } else {
            FUNC4(pb, par->codec_tag | FLV_FRAME_KEY); // flags
            FUNC4(pb, 0); // AVC sequence header
            FUNC5(pb, 0); // composition time
            FUNC8(pb, par->extradata, par->extradata_size);
        }
        data_size = FUNC3(pb) - pos;
        FUNC1(pb, -data_size - 10, SEEK_CUR);
        FUNC5(pb, data_size);
        FUNC2(pb, data_size + 10 - 3);
        FUNC6(pb, data_size + 11); // previous tag size
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_11__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_27__ {int nb_streams; int flags; int /*<<< orphan*/  nb_chapters; int /*<<< orphan*/  chapters; int /*<<< orphan*/  metadata; TYPE_5__** streams; TYPE_4__* priv_data; } ;
struct TYPE_22__ {int num; int den; } ;
struct TYPE_26__ {TYPE_1__ time_base; TYPE_11__* codecpar; int /*<<< orphan*/  metadata; TYPE_3__* priv_data; } ;
struct TYPE_25__ {int serial_offset; scalar_t__ pref_size; } ;
struct TYPE_23__ {int stream_index; } ;
struct TYPE_24__ {unsigned int serial_num; int** header; int kfgshift; int vrev; int /*<<< orphan*/ * header_len; TYPE_2__ page; } ;
struct TYPE_21__ {scalar_t__ codec_type; scalar_t__ codec_id; int sample_rate; int /*<<< orphan*/  extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  TYPE_3__ OGGStreamContext ;
typedef  TYPE_4__ OGGContext ;
typedef  TYPE_5__ AVStream ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVFMT_FLAG_BITEXACT ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AV_CODEC_ID_FLAC ; 
 scalar_t__ AV_CODEC_ID_OPUS ; 
 scalar_t__ AV_CODEC_ID_SPEEX ; 
 scalar_t__ AV_CODEC_ID_THEORA ; 
 scalar_t__ AV_CODEC_ID_VORBIS ; 
 scalar_t__ AV_CODEC_ID_VP8 ; 
 int /*<<< orphan*/  AV_DICT_DONT_OVERWRITE ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int**,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int**,int) ; 
 int FUNC11 (TYPE_11__*,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_11__*,TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_11__*,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_6__*,TYPE_5__*,TYPE_3__*,int) ; 
 int* FUNC15 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(AVFormatContext *s)
{
    OGGContext *ogg = s->priv_data;
    OGGStreamContext *oggstream = NULL;
    int i, j;

    if (ogg->pref_size)
        FUNC5(s, AV_LOG_WARNING, "The pagesize option is deprecated\n");

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        unsigned serial_num = i + ogg->serial_offset;

        if (st->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
            if (st->codecpar->codec_id == AV_CODEC_ID_OPUS)
                /* Opus requires a fixed 48kHz clock */
                FUNC7(st, 64, 1, 48000);
            else
                FUNC7(st, 64, 1, st->codecpar->sample_rate);
        }

        if (st->codecpar->codec_id != AV_CODEC_ID_VORBIS &&
            st->codecpar->codec_id != AV_CODEC_ID_THEORA &&
            st->codecpar->codec_id != AV_CODEC_ID_SPEEX  &&
            st->codecpar->codec_id != AV_CODEC_ID_FLAC   &&
            st->codecpar->codec_id != AV_CODEC_ID_OPUS   &&
            st->codecpar->codec_id != AV_CODEC_ID_VP8) {
            FUNC5(s, AV_LOG_ERROR, "Unsupported codec id in stream %d\n", i);
            return FUNC0(EINVAL);
        }

        if ((!st->codecpar->extradata || !st->codecpar->extradata_size) &&
            st->codecpar->codec_id != AV_CODEC_ID_VP8) {
            FUNC5(s, AV_LOG_ERROR, "No extradata present\n");
            return AVERROR_INVALIDDATA;
        }
        oggstream = FUNC6(sizeof(*oggstream));
        if (!oggstream)
            return FUNC0(ENOMEM);

        oggstream->page.stream_index = i;

        if (!(s->flags & AVFMT_FLAG_BITEXACT))
            do {
                serial_num = FUNC4();
                for (j = 0; j < i; j++) {
                    OGGStreamContext *sc = s->streams[j]->priv_data;
                    if (serial_num == sc->serial_num)
                        break;
                }
            } while (j < i);
        oggstream->serial_num = serial_num;

        FUNC2(&st->metadata, s->metadata, AV_DICT_DONT_OVERWRITE);

        st->priv_data = oggstream;
        if (st->codecpar->codec_id == AV_CODEC_ID_FLAC) {
            int err = FUNC11(st->codecpar, oggstream,
                                             s->flags & AVFMT_FLAG_BITEXACT,
                                             &st->metadata);
            if (err) {
                FUNC5(s, AV_LOG_ERROR, "Error writing FLAC headers\n");
                FUNC3(&st->priv_data);
                return err;
            }
        } else if (st->codecpar->codec_id == AV_CODEC_ID_SPEEX) {
            int err = FUNC13(st->codecpar, oggstream,
                                              s->flags & AVFMT_FLAG_BITEXACT,
                                              &st->metadata);
            if (err) {
                FUNC5(s, AV_LOG_ERROR, "Error writing Speex headers\n");
                FUNC3(&st->priv_data);
                return err;
            }
        } else if (st->codecpar->codec_id == AV_CODEC_ID_OPUS) {
            int err = FUNC12(st->codecpar, oggstream,
                                             s->flags & AVFMT_FLAG_BITEXACT,
                                             &st->metadata, s->chapters, s->nb_chapters);
            if (err) {
                FUNC5(s, AV_LOG_ERROR, "Error writing Opus headers\n");
                FUNC3(&st->priv_data);
                return err;
            }
        } else if (st->codecpar->codec_id == AV_CODEC_ID_VP8) {
            int err = FUNC14(s, st, oggstream,
                                            s->flags & AVFMT_FLAG_BITEXACT);
            if (err) {
                FUNC5(s, AV_LOG_ERROR, "Error writing VP8 headers\n");
                FUNC3(&st->priv_data);
                return err;
            }
        } else {
            uint8_t *p;
            const char *cstr = st->codecpar->codec_id == AV_CODEC_ID_VORBIS ? "vorbis" : "theora";
            int header_type = st->codecpar->codec_id == AV_CODEC_ID_VORBIS ? 3 : 0x81;
            int framing_bit = st->codecpar->codec_id == AV_CODEC_ID_VORBIS ? 1 : 0;

            if (FUNC8(st->codecpar->extradata, st->codecpar->extradata_size,
                                      st->codecpar->codec_id == AV_CODEC_ID_VORBIS ? 30 : 42,
                                      (const uint8_t**)oggstream->header, oggstream->header_len) < 0) {
                FUNC5(s, AV_LOG_ERROR, "Extradata corrupted\n");
                FUNC3(&st->priv_data);
                return AVERROR_INVALIDDATA;
            }

            p = FUNC15(7, s->flags & AVFMT_FLAG_BITEXACT,
                                        &oggstream->header_len[1], &st->metadata,
                                        framing_bit, NULL, 0);
            oggstream->header[1] = p;
            if (!p)
                return FUNC0(ENOMEM);

            FUNC10(&p, header_type);
            FUNC9(&p, cstr, 6);

            if (st->codecpar->codec_id == AV_CODEC_ID_THEORA) {
                int den = FUNC1(oggstream->header[0] + 22), num = FUNC1(oggstream->header[0] + 26);
                /* Make sure to use time base stored in the Theora stream header to write
                   correct timestamps */
                if (st->time_base.num != num || st->time_base.den != den) {
                    FUNC5(s, AV_LOG_DEBUG, "Changing time base from %d/%d to %d/%d\n",
                           st->time_base.num, st->time_base.den, num, den);
                    FUNC7(st, 64, num, den);
                }
                /** KFGSHIFT is the width of the less significant section of the granule position
                    The less significant section is the frame count since the last keyframe */
                oggstream->kfgshift = ((oggstream->header[0][40]&3)<<3)|(oggstream->header[0][41]>>5);
                oggstream->vrev = oggstream->header[0][9];
                FUNC5(s, AV_LOG_DEBUG, "theora kfgshift %d, vrev %d\n",
                       oggstream->kfgshift, oggstream->vrev);
            }
        }
    }

    return 0;
}
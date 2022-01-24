#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_15__ {TYPE_1__* iformat; int /*<<< orphan*/  pb; TYPE_3__* priv_data; } ;
struct TYPE_14__ {TYPE_2__* codecpar; } ;
struct TYPE_13__ {int sample_rate; int channels; } ;
struct TYPE_12__ {int sample_rate; int channels; int bits_per_coded_sample; int block_align; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_11__ {int /*<<< orphan*/ * mime_type; int /*<<< orphan*/  raw_codec_id; } ;
typedef  TYPE_3__ PCMAudioDemuxerContext ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_S16LE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_OPT_SEARCH_CHILDREN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 TYPE_4__* FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC13(AVFormatContext *s)
{
    PCMAudioDemuxerContext *s1 = s->priv_data;
    AVStream *st;
    uint8_t *mime_type = NULL;

    st = FUNC7(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);


    st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id    = s->iformat->raw_codec_id;
    st->codecpar->sample_rate = s1->sample_rate;
    st->codecpar->channels    = s1->channels;

    FUNC5(s->pb, "mime_type", AV_OPT_SEARCH_CHILDREN, &mime_type);
    if (mime_type && s->iformat->mime_type) {
        int rate = 0, channels = 0, little_endian = 0;
        size_t len = FUNC11(s->iformat->mime_type);
        if (!FUNC6(s->iformat->mime_type, mime_type, len)) { /* audio/L16 */
            uint8_t *options = mime_type + len;
            len = FUNC11(mime_type);
            while (options < mime_type + len) {
                options = FUNC12(options, ";");
                if (!options++)
                    break;
                if (!rate)
                    FUNC9(options, " rate=%d",     &rate);
                if (!channels)
                    FUNC9(options, " channels=%d", &channels);
                if (!little_endian) {
                     char val[14]; /* sizeof("little-endian") == 14 */
                     if (FUNC9(options, " endianness=%13s", val) == 1) {
                         little_endian = FUNC10(val, "little-endian") == 0;
                     }
                }
            }
            if (rate <= 0) {
                FUNC4(s, AV_LOG_ERROR,
                       "Invalid sample_rate found in mime_type \"%s\"\n",
                       mime_type);
                FUNC2(&mime_type);
                return AVERROR_INVALIDDATA;
            }
            st->codecpar->sample_rate = rate;
            if (channels > 0)
                st->codecpar->channels = channels;
            if (little_endian)
                st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE;
        }
    }
    FUNC2(&mime_type);

    st->codecpar->bits_per_coded_sample =
        FUNC3(st->codecpar->codec_id);

    FUNC1(st->codecpar->bits_per_coded_sample > 0);

    st->codecpar->block_align =
        st->codecpar->bits_per_coded_sample * st->codecpar->channels / 8;

    FUNC8(st, 64, 1, st->codecpar->sample_rate);
    return 0;
}
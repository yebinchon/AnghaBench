#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_11__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/ * pb; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {int channels; double sample_rate; int bits_per_coded_sample; int bit_rate; int block_align; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_S32BE ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_S32LE ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 double INT_MAX ; 
 int SOX_FIXED_HDR ; 
 void* SOX_TAG ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (unsigned int) ; 
 TYPE_2__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int,double) ; 
 double FUNC14 (double) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    unsigned header_size, comment_size;
    double sample_rate, sample_rate_frac;
    AVStream *st;

    st = FUNC6(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;

    if (FUNC10(pb) == SOX_TAG) {
        st->codecpar->codec_id = AV_CODEC_ID_PCM_S32LE;
        header_size         = FUNC10(pb);
        FUNC12(pb, 8); /* sample count */
        sample_rate         = FUNC3(FUNC11(pb));
        st->codecpar->channels = FUNC10(pb);
        comment_size        = FUNC10(pb);
    } else {
        st->codecpar->codec_id = AV_CODEC_ID_PCM_S32BE;
        header_size         = FUNC7(pb);
        FUNC12(pb, 8); /* sample count */
        sample_rate         = FUNC3(FUNC8(pb));
        st->codecpar->channels = FUNC7(pb);
        comment_size        = FUNC7(pb);
    }

    if (comment_size > 0xFFFFFFFFU - SOX_FIXED_HDR - 4U) {
        FUNC4(s, AV_LOG_ERROR, "invalid comment size (%u)\n", comment_size);
        return AVERROR_INVALIDDATA;
    }

    if (sample_rate <= 0 || sample_rate > INT_MAX) {
        FUNC4(s, AV_LOG_ERROR, "invalid sample rate (%f)\n", sample_rate);
        return AVERROR_INVALIDDATA;
    }

    sample_rate_frac = sample_rate - FUNC14(sample_rate);
    if (sample_rate_frac)
        FUNC4(s, AV_LOG_WARNING,
               "truncating fractional part of sample rate (%f)\n",
               sample_rate_frac);

    if ((header_size + 4) & 7 || header_size < SOX_FIXED_HDR + comment_size
        || st->codecpar->channels > 65535) /* Reserve top 16 bits */ {
        FUNC4(s, AV_LOG_ERROR, "invalid header\n");
        return AVERROR_INVALIDDATA;
    }

    if (comment_size && comment_size < UINT_MAX) {
        char *comment = FUNC5(comment_size+1);
        if(!comment)
            return FUNC0(ENOMEM);
        if (FUNC9(pb, comment, comment_size) != comment_size) {
            FUNC2(&comment);
            return FUNC0(EIO);
        }
        comment[comment_size] = 0;

        FUNC1(&s->metadata, "comment", comment,
                               AV_DICT_DONT_STRDUP_VAL);
    }

    FUNC12(pb, header_size - SOX_FIXED_HDR - comment_size);

    st->codecpar->sample_rate           = sample_rate;
    st->codecpar->bits_per_coded_sample = 32;
    st->codecpar->bit_rate              = (int64_t)st->codecpar->sample_rate *
                                          st->codecpar->bits_per_coded_sample *
                                          st->codecpar->channels;
    st->codecpar->block_align           = st->codecpar->bits_per_coded_sample *
                                          st->codecpar->channels / 8;

    FUNC13(st, 64, 1, st->codecpar->sample_rate);

    return 0;
}
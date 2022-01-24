#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_14__ {int sample_rate; int channels; scalar_t__ extradata; int /*<<< orphan*/  codec_type; int /*<<< orphan*/  codec_id; } ;
struct TYPE_13__ {TYPE_1__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_12__ {int duration; TYPE_4__* codecpar; } ;
struct TYPE_11__ {scalar_t__ samples_count; } ;
typedef  TYPE_1__ RedSparkContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_THP ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int HEADER_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (TYPE_4__*,int) ; 
 int FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    RedSparkContext *redspark = s->priv_data;
    AVCodecParameters *par;
    GetByteContext gbc;
    int i, coef_off, ret = 0;
    uint32_t key, data;
    uint8_t header[HEADER_SIZE];
    AVStream *st;

    st = FUNC3(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    par = st->codecpar;

    /* Decrypt header */
    data = FUNC4(pb);
    key  = data ^ 0x52656453;
    data ^= key;
    FUNC1(header, data);
    key = FUNC13(key, 11);

    for (i = 4; i < HEADER_SIZE; i += 4) {
        key += FUNC13(key, 3);
        data = FUNC4(pb) ^ key;
        FUNC1(header + i, data);
    }

    par->codec_id    = AV_CODEC_ID_ADPCM_THP;
    par->codec_type  = AVMEDIA_TYPE_AUDIO;

    FUNC9(&gbc, header, HEADER_SIZE);
    FUNC10(&gbc, 0x3c, SEEK_SET);
    par->sample_rate = FUNC6(&gbc);
    if (par->sample_rate <= 0 || par->sample_rate > 96000) {
        FUNC2(s, AV_LOG_ERROR, "Invalid sample rate: %d\n", par->sample_rate);
        return AVERROR_INVALIDDATA;
    }

    st->duration = FUNC6(&gbc) * 14;
    redspark->samples_count = 0;
    FUNC11(&gbc, 10);
    par->channels = FUNC8(&gbc);
    if (!par->channels) {
        return AVERROR_INVALIDDATA;
    }

    coef_off = 0x54 + par->channels * 8;
    if (FUNC8(&gbc)) // Loop flag
        coef_off += 16;

    if (coef_off + par->channels * (32 + 14) > HEADER_SIZE) {
        return AVERROR_INVALIDDATA;
    }

    if (FUNC12(par, 32 * par->channels)) {
        return AVERROR_INVALIDDATA;
    }

    /* Get the ADPCM table */
    FUNC10(&gbc, coef_off, SEEK_SET);
    for (i = 0; i < par->channels; i++) {
        if (FUNC7(&gbc, par->extradata + i * 32, 32) != 32) {
            return AVERROR_INVALIDDATA;
        }
        FUNC11(&gbc, 14);
    }

    FUNC5(st, 64, 1, par->sample_rate);

    return ret;
}
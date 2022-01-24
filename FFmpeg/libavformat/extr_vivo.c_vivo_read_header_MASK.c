#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  long int64_t ;
struct TYPE_17__ {int length; unsigned char* text; int version; scalar_t__ type; scalar_t__ sequence; } ;
typedef  TYPE_2__ VivoContext ;
struct TYPE_20__ {int /*<<< orphan*/  duration; int /*<<< orphan*/  metadata; int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_19__ {int member_0; int member_1; long num; long den; } ;
struct TYPE_18__ {TYPE_1__* codecpar; scalar_t__ start_time; } ;
struct TYPE_16__ {int sample_rate; long width; long height; int bits_per_coded_sample; int block_align; int bit_rate; int channels; int /*<<< orphan*/  codec_type; scalar_t__ codec_tag; int /*<<< orphan*/  codec_id; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVRational ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_G723_1 ; 
 int /*<<< orphan*/  AV_CODEC_ID_H263 ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC2 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,unsigned char*,int,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (long,int,int) ; 
 TYPE_3__* FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int,long) ; 
 int FUNC10 (unsigned char*,char*,int*) ; 
 unsigned char* FUNC11 (unsigned char*,char) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,char*) ; 
 unsigned char* FUNC13 (unsigned char*,char*) ; 
 long FUNC14 (unsigned char*,char**,int) ; 
 int FUNC15 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC16(AVFormatContext *s)
{
    VivoContext *vivo = s->priv_data;
    AVRational fps = { 1, 25};
    AVStream *ast, *vst;
    unsigned char *line, *line_end, *key, *value;
    long value_int;
    int ret, value_used;
    int64_t duration = 0;
    char *end_value;

    vst = FUNC6(s, NULL);
    ast = FUNC6(s, NULL);
    if (!ast || !vst)
        return FUNC0(ENOMEM);

    ast->codecpar->sample_rate = 8000;

    while (1) {
        if ((ret = FUNC15(s)) < 0)
            return ret;

        // done reading all text header packets?
        if (vivo->sequence || vivo->type)
            break;

        if (vivo->length <= 1024) {
            FUNC7(s->pb, vivo->text, vivo->length);
            vivo->text[vivo->length] = 0;
        } else {
            FUNC3(s, AV_LOG_WARNING, "too big header, skipping\n");
            FUNC8(s->pb, vivo->length);
            continue;
        }

        line = vivo->text;
        while (*line) {
            line_end = FUNC13(line, "\r\n");
            if (!line_end)
                break;

            *line_end = 0;
            key = line;
            line = line_end + 2; // skip \r\n

            if (line_end == key) // skip blank lines
                continue;

            value = FUNC11(key, ':');
            if (!value) {
                FUNC3(s, AV_LOG_WARNING, "missing colon in key:value pair '%s'\n",
                       key);
                continue;
            }

            *value++ = 0;

            FUNC3(s, AV_LOG_DEBUG, "header: '%s' = '%s'\n", key, value);

            value_int = FUNC14(value, &end_value, 10);
            value_used = 0;
            if (*end_value == 0) { // valid integer
                FUNC3(s, AV_LOG_DEBUG, "got a valid integer (%ld)\n", value_int);
                value_used = 1;
                if (!FUNC12(key, "Duration")) {
                    duration = value_int;
                } else if (!FUNC12(key, "Width")) {
                    vst->codecpar->width = value_int;
                } else if (!FUNC12(key, "Height")) {
                    vst->codecpar->height = value_int;
                } else if (!FUNC12(key, "TimeUnitNumerator")) {
                    fps.num = value_int / 1000;
                } else if (!FUNC12(key, "TimeUnitDenominator")) {
                    fps.den = value_int;
                } else if (!FUNC12(key, "SamplingFrequency")) {
                    ast->codecpar->sample_rate = value_int;
                } else if (!FUNC12(key, "NominalBitrate")) {
                } else if (!FUNC12(key, "Length")) {
                    // size of file
                } else {
                    value_used = 0;
                }
            }

            if (!FUNC12(key, "Version")) {
                if (FUNC10(value, "Vivo/%d.", &vivo->version) != 1)
                    return AVERROR_INVALIDDATA;
                value_used = 1;
            } else if (!FUNC12(key, "FPS")) {
                AVRational tmp;

                value_used = 1;
                if (!FUNC4(&tmp, value, 10000, AV_LOG_WARNING, s))
                    fps = FUNC2(tmp);
            }

            if (!value_used)
                FUNC1(&s->metadata, key, value, 0);
        }
    }

    FUNC9(ast, 64, 1, ast->codecpar->sample_rate);
    FUNC9(vst, 64, fps.num, fps.den);
    if (duration)
        s->duration = FUNC5(duration, 1000, 1);

    vst->start_time        = 0;
    vst->codecpar->codec_tag  = 0;
    vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;

    if (vivo->version == 1) {
        vst->codecpar->codec_id = AV_CODEC_ID_H263;
        ast->codecpar->codec_id = AV_CODEC_ID_G723_1;
        ast->codecpar->bits_per_coded_sample = 8;
        ast->codecpar->block_align = 24;
        ast->codecpar->bit_rate = 6400;
    }

    ast->start_time        = 0;
    ast->codecpar->codec_tag  = 0;
    ast->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    ast->codecpar->channels = 1;

    return 0;
}
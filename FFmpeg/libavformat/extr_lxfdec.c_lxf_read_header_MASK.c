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
typedef  int uint16_t ;
struct TYPE_14__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {TYPE_1__* codecpar; int /*<<< orphan*/  need_parsing; void* duration; } ;
struct TYPE_12__ {int channels; int /*<<< orphan*/  extended_size; } ;
struct TYPE_11__ {int bit_rate; int codec_tag; int channels; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  codec_type; int /*<<< orphan*/  codec_id; } ;
typedef  TYPE_2__ LXFDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_HEADERS ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int LXF_HEADER_DATA_SIZE ; 
 int /*<<< orphan*/  LXF_SAMPLERATE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  lxf_tags ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s)
{
    LXFDemuxContext *lxf = s->priv_data;
    AVIOContext   *pb  = s->pb;
    uint8_t header_data[LXF_HEADER_DATA_SIZE];
    int ret;
    AVStream *st;
    uint32_t video_params, disk_params;
    uint16_t record_date, expiration_date;

    if ((ret = FUNC9(s)) < 0)
        return ret;

    if (ret != LXF_HEADER_DATA_SIZE) {
        FUNC3(s, AV_LOG_ERROR, "expected %d B size header, got %d\n",
               LXF_HEADER_DATA_SIZE, ret);
        return AVERROR_INVALIDDATA;
    }

    if ((ret = FUNC5(pb, header_data, LXF_HEADER_DATA_SIZE)) != LXF_HEADER_DATA_SIZE)
        return ret < 0 ? ret : AVERROR_EOF;

    if (!(st = FUNC4(s, NULL)))
        return FUNC0(ENOMEM);

    st->duration          = FUNC2(&header_data[32]);
    video_params          = FUNC2(&header_data[40]);
    record_date           = FUNC1(&header_data[56]);
    expiration_date       = FUNC1(&header_data[58]);
    disk_params           = FUNC2(&header_data[116]);

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->bit_rate   = 1000000 * ((video_params >> 14) & 0xFF);
    st->codecpar->codec_tag  = video_params & 0xF;
    st->codecpar->codec_id   = FUNC8(lxf_tags, st->codecpar->codec_tag);
    st->need_parsing         = AVSTREAM_PARSE_HEADERS;

    FUNC3(s, AV_LOG_DEBUG, "record: %x = %i-%02i-%02i\n",
           record_date, 1900 + (record_date & 0x7F), (record_date >> 7) & 0xF,
           (record_date >> 11) & 0x1F);

    FUNC3(s, AV_LOG_DEBUG, "expire: %x = %i-%02i-%02i\n",
           expiration_date, 1900 + (expiration_date & 0x7F), (expiration_date >> 7) & 0xF,
           (expiration_date >> 11) & 0x1F);

    if ((video_params >> 22) & 1)
        FUNC3(s, AV_LOG_WARNING, "VBI data not yet supported\n");

    if ((lxf->channels = 1 << ((disk_params >> 4 & 3) + 1))) {
        if (!(st = FUNC4(s, NULL)))
            return FUNC0(ENOMEM);

        st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
        st->codecpar->sample_rate = LXF_SAMPLERATE;
        st->codecpar->channels    = lxf->channels;

        FUNC7(st, 64, 1, st->codecpar->sample_rate);
    }

    FUNC6(s->pb, lxf->extended_size);

    return 0;
}
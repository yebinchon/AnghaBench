#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int int64_t ;
typedef  enum TAKMetaDataType { ____Placeholder_TAKMetaDataType } TAKMetaDataType ;
struct TYPE_30__ {int error_recognition; TYPE_5__* pb; TYPE_3__* priv_data; } ;
struct TYPE_29__ {int seekable; } ;
struct TYPE_28__ {scalar_t__ duration; TYPE_1__* codecpar; scalar_t__ start_time; int /*<<< orphan*/  need_parsing; } ;
struct TYPE_27__ {int mlast_frame; scalar_t__ data_end; } ;
struct TYPE_26__ {scalar_t__ samples; int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_rate; scalar_t__ ch_layout; int /*<<< orphan*/  bps; } ;
struct TYPE_25__ {int* extradata; int extradata_size; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  channels; scalar_t__ channel_layout; int /*<<< orphan*/  bits_per_coded_sample; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ TAKStreamInfo ;
typedef  TYPE_3__ TAKDemuxContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_FULL_RAW ; 
 int /*<<< orphan*/  AV_CODEC_ID_TAK ; 
 int AV_EF_EXPLODE ; 
 int /*<<< orphan*/  AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TAK_ENCODER_VERSION_BITS ; 
 int /*<<< orphan*/  TAK_LAST_FRAME_POS_BITS ; 
 int /*<<< orphan*/  TAK_LAST_FRAME_SIZE_BITS ; 
#define  TAK_METADATA_ENCODER 132 
#define  TAK_METADATA_END 131 
#define  TAK_METADATA_LAST_FRAME 130 
#define  TAK_METADATA_MD5 129 
#define  TAK_METADATA_STREAMINFO 128 
 int /*<<< orphan*/  FUNC2 (int**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,char*,...) ; 
 int* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int FUNC9 (TYPE_5__*,int*,int) ; 
 int FUNC10 (TYPE_5__*) ; 
 scalar_t__ FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_5__*,int) ; 
 int FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_2__*,int*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC24 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tak_check_crc ; 

__attribute__((used)) static int FUNC25(AVFormatContext *s)
{
    TAKDemuxContext *tc = s->priv_data;
    AVIOContext *pb     = s->pb;
    GetBitContext gb;
    AVStream *st;
    uint8_t *buffer = NULL;
    int ret;

    st = FUNC5(s, 0);
    if (!st)
        return FUNC0(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id   = AV_CODEC_ID_TAK;
    st->need_parsing         = AVSTREAM_PARSE_FULL_RAW;

    tc->mlast_frame = 0;
    if (FUNC11(pb) != FUNC1('t', 'B', 'a', 'K')) {
        FUNC12(pb, -4, SEEK_CUR);
        return 0;
    }

    while (!FUNC6(pb)) {
        enum TAKMetaDataType type;
        int size;

        type = FUNC7(pb) & 0x7f;
        size = FUNC10(pb);

        switch (type) {
        case TAK_METADATA_STREAMINFO:
            if (st->codecpar->extradata)
                return AVERROR_INVALIDDATA;
        case TAK_METADATA_LAST_FRAME:
        case TAK_METADATA_ENCODER:
            if (size <= 3)
                return AVERROR_INVALIDDATA;

            buffer = FUNC4(size - 3 + AV_INPUT_BUFFER_PADDING_SIZE);
            if (!buffer)
                return FUNC0(ENOMEM);
            FUNC24(buffer + size - 3, 0, AV_INPUT_BUFFER_PADDING_SIZE);

            FUNC19(pb, tak_check_crc, 0xCE04B7U);
            if (FUNC9(pb, buffer, size - 3) != size - 3) {
                FUNC2(&buffer);
                return FUNC0(EIO);
            }
            if (FUNC18(s->pb) != FUNC8(pb)) {
                FUNC3(s, AV_LOG_ERROR, "%d metadata block CRC error.\n", type);
                if (s->error_recognition & AV_EF_EXPLODE) {
                    FUNC2(&buffer);
                    return AVERROR_INVALIDDATA;
                }
            }

            break;
        case TAK_METADATA_MD5: {
            uint8_t md5[16];
            int i;

            if (size != 19)
                return AVERROR_INVALIDDATA;
            FUNC19(pb, tak_check_crc, 0xCE04B7U);
            FUNC9(pb, md5, 16);
            if (FUNC18(s->pb) != FUNC8(pb)) {
                FUNC3(s, AV_LOG_ERROR, "MD5 metadata block CRC error.\n");
                if (s->error_recognition & AV_EF_EXPLODE)
                    return AVERROR_INVALIDDATA;
            }

            FUNC3(s, AV_LOG_VERBOSE, "MD5=");
            for (i = 0; i < 16; i++)
                FUNC3(s, AV_LOG_VERBOSE, "%02x", md5[i]);
            FUNC3(s, AV_LOG_VERBOSE, "\n");
            break;
        }
        case TAK_METADATA_END: {
            int64_t curpos = FUNC14(pb);

            if (pb->seekable & AVIO_SEEKABLE_NORMAL) {
                FUNC17(s);
                FUNC12(pb, curpos, SEEK_SET);
            }

            tc->data_end += curpos;
            return 0;
        }
        default:
            ret = FUNC13(pb, size);
            if (ret < 0)
                return ret;
        }

        if (type == TAK_METADATA_STREAMINFO) {
            TAKStreamInfo ti;

            ret = FUNC16(&ti, buffer, size -3);
            if (ret < 0)
                goto end;
            if (ti.samples > 0)
                st->duration = ti.samples;
            st->codecpar->bits_per_coded_sample = ti.bps;
            if (ti.ch_layout)
                st->codecpar->channel_layout = ti.ch_layout;
            st->codecpar->sample_rate           = ti.sample_rate;
            st->codecpar->channels              = ti.channels;
            st->start_time                   = 0;
            FUNC15(st, 64, 1, st->codecpar->sample_rate);
            st->codecpar->extradata             = buffer;
            st->codecpar->extradata_size        = size - 3;
            buffer                           = NULL;
        } else if (type == TAK_METADATA_LAST_FRAME) {
            if (size != 11) {
                ret = AVERROR_INVALIDDATA;
                goto end;
            }
            FUNC23(&gb, buffer, size - 3);
            tc->mlast_frame = 1;
            tc->data_end    = FUNC21(&gb, TAK_LAST_FRAME_POS_BITS) +
                              FUNC20(&gb, TAK_LAST_FRAME_SIZE_BITS);
            FUNC2(&buffer);
        } else if (type == TAK_METADATA_ENCODER) {
            FUNC23(&gb, buffer, size - 3);
            FUNC3(s, AV_LOG_VERBOSE, "encoder version: %0X\n",
                   FUNC22(&gb, TAK_ENCODER_VERSION_BITS));
            FUNC2(&buffer);
        }
    }

    return AVERROR_EOF;
end:
    FUNC2(&buffer);
    return ret;
}
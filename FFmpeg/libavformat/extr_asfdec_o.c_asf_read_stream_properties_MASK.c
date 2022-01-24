#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ff_asf_guid ;
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_20__ {int codec_type; } ;
struct TYPE_19__ {int nb_streams; int /*<<< orphan*/  offset; TYPE_4__** asf_st; } ;
struct TYPE_15__ {scalar_t__ data_size; int /*<<< orphan*/  avpkt; } ;
struct TYPE_18__ {int stream_index; int type; int span; void* virtual_pkt_len; void* virtual_chunk_len; TYPE_1__ pkt; scalar_t__ indexed; int /*<<< orphan*/  index; } ;
struct TYPE_17__ {int /*<<< orphan*/ * pb; TYPE_5__* priv_data; } ;
struct TYPE_16__ {int id; TYPE_8__* codecpar; int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  GUIDParseTable ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ ASFStream ;
typedef  TYPE_5__ ASFContext ;

/* Variables and functions */
 int ASF_MAX_STREAMS ; 
 int ASF_STREAM_NUM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
#define  AVMEDIA_TYPE_AUDIO 129 
 int AVMEDIA_TYPE_DATA ; 
 int AVMEDIA_TYPE_UNKNOWN ; 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC4 (int) ; 
 TYPE_2__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  ff_asf_audio_stream ; 
 int /*<<< orphan*/  ff_asf_command_stream ; 
 int /*<<< orphan*/  ff_asf_ext_stream_embed_stream_header ; 
 int /*<<< orphan*/  ff_asf_jfif_media ; 
 int /*<<< orphan*/  ff_asf_video_stream ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_8__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(AVFormatContext *s, const GUIDParseTable *g)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    uint64_t size;
    uint32_t err_data_len, ts_data_len; // type specific data length
    uint16_t flags;
    ff_asf_guid stream_type;
    enum AVMediaType type;
    int i, ret;
    uint8_t stream_index;
    AVStream *st;
    ASFStream *asf_st;

    // ASF file must not contain more than 128 streams according to the specification
    if (asf->nb_streams >= ASF_MAX_STREAMS)
        return AVERROR_INVALIDDATA;

    size = FUNC9(pb);
    FUNC12(pb, &stream_type);
    if (!FUNC14(&stream_type, &ff_asf_audio_stream))
        type = AVMEDIA_TYPE_AUDIO;
    else if (!FUNC14(&stream_type, &ff_asf_video_stream))
        type = AVMEDIA_TYPE_VIDEO;
    else if (!FUNC14(&stream_type, &ff_asf_jfif_media))
        type = AVMEDIA_TYPE_VIDEO;
    else if (!FUNC14(&stream_type, &ff_asf_command_stream))
        type = AVMEDIA_TYPE_DATA;
    else if (!FUNC14(&stream_type,
                         &ff_asf_ext_stream_embed_stream_header))
        type = AVMEDIA_TYPE_UNKNOWN;
    else
        return AVERROR_INVALIDDATA;

    FUNC12(pb, &stream_type); // error correction type
    FUNC10(pb, 8); // skip the time offset
    ts_data_len      = FUNC8(pb);
    err_data_len     = FUNC8(pb);
    flags            = FUNC7(pb); // bit 15 - Encrypted Content

    stream_index = flags & ASF_STREAM_NUM;
    for (i = 0; i < asf->nb_streams; i++)
        if (stream_index == asf->asf_st[i]->stream_index) {
            FUNC3(s, AV_LOG_WARNING,
                   "Duplicate stream found, this stream will be ignored.\n");
            FUNC1(pb, asf->offset, size);
            return 0;
        }

    st = FUNC5(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    FUNC11(st, 32, 1, 1000); // pts should be dword, in milliseconds
    st->codecpar->codec_type = type;
    asf->asf_st[asf->nb_streams] = FUNC4(sizeof(*asf_st));
    if (!asf->asf_st[asf->nb_streams])
        return FUNC0(ENOMEM);
    asf_st                       = asf->asf_st[asf->nb_streams];
    asf->nb_streams++;
    asf_st->stream_index         = stream_index;
    asf_st->index                = st->index;
    asf_st->indexed              = 0;
    st->id                       = flags & ASF_STREAM_NUM;
    FUNC2(&asf_st->pkt.avpkt);
    asf_st->pkt.data_size        = 0;
    FUNC10(pb, 4); // skip reserved field

    switch (type) {
    case AVMEDIA_TYPE_AUDIO:
        asf_st->type = AVMEDIA_TYPE_AUDIO;
        if ((ret = FUNC13(s, pb, st->codecpar, ts_data_len, 0)) < 0)
            return ret;
        break;
    case AVMEDIA_TYPE_VIDEO:
        asf_st->type = AVMEDIA_TYPE_VIDEO;
        if ((ret = FUNC15(pb, st)) < 0)
            return ret;
        break;
    default:
        FUNC10(pb, ts_data_len);
        break;
    }

    if (err_data_len) {
        if (type == AVMEDIA_TYPE_AUDIO) {
            uint8_t span = FUNC6(pb);
            if (span > 1) {
                asf_st->span              = span;
                asf_st->virtual_pkt_len   = FUNC7(pb);
                asf_st->virtual_chunk_len = FUNC7(pb);
                if (!asf_st->virtual_chunk_len || !asf_st->virtual_pkt_len)
                    return AVERROR_INVALIDDATA;
                FUNC10(pb, err_data_len - 5);
            } else
                FUNC10(pb, err_data_len - 1);
        } else
            FUNC10(pb, err_data_len);
    }

    FUNC1(pb, asf->offset, size);

    return 0;
}
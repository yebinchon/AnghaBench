#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_28__ {int codec_id; int frame_size; int channels; int block_align; int extradata_size; char* extradata; scalar_t__ channel_layout; int /*<<< orphan*/  sample_rate; } ;
struct TYPE_27__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
struct TYPE_26__ {int nb_streams; int /*<<< orphan*/  metadata; TYPE_2__* priv_data; TYPE_1__** streams; TYPE_3__* pb; } ;
struct TYPE_25__ {int seekable; } ;
struct TYPE_24__ {int /*<<< orphan*/  data; } ;
struct TYPE_23__ {TYPE_6__* codecpar; } ;
typedef  TYPE_2__ CAFContext ;
typedef  TYPE_3__ AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVDictionaryEntry ;
typedef  TYPE_6__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int AVIO_SEEKABLE_NORMAL ; 
#define  AV_CODEC_ID_AAC 128 
 int AV_CODEC_ID_ALAC ; 
 int AV_CODEC_ID_AMR_NB ; 
 int AV_CODEC_ID_MP3 ; 
 int AV_CODEC_ID_OPUS ; 
 int AV_CODEC_ID_QDM2 ; 
 int AV_CODEC_ID_QDMC ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,char*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char*,int) ; 
 int FUNC15 (int) ; 
 int /*<<< orphan*/  ff_codec_caf_tags ; 
 unsigned int FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,char*) ; 
 int FUNC20 (int,int,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVCodecParameters *par = s->streams[0]->codecpar;
    CAFContext *caf = s->priv_data;
    AVDictionaryEntry *t = NULL;
    unsigned int codec_tag = FUNC16(ff_codec_caf_tags, par->codec_id);
    int64_t chunk_size = 0;
    int frame_size = par->frame_size;

    if (s->nb_streams != 1) {
        FUNC5(s, AV_LOG_ERROR, "CAF files have exactly one stream\n");
        return FUNC0(EINVAL);
    }

    switch (par->codec_id) {
    case AV_CODEC_ID_AAC:
        FUNC5(s, AV_LOG_ERROR, "muxing codec currently unsupported\n");
        return AVERROR_PATCHWELCOME;
    }

    if (par->codec_id == AV_CODEC_ID_OPUS && par->channels > 2) {
        FUNC5(s, AV_LOG_ERROR, "Only mono and stereo are supported for Opus\n");
        return AVERROR_INVALIDDATA;
    }

    if (!codec_tag) {
        FUNC5(s, AV_LOG_ERROR, "unsupported codec\n");
        return AVERROR_INVALIDDATA;
    }

    if (!par->block_align && !(pb->seekable & AVIO_SEEKABLE_NORMAL)) {
        FUNC5(s, AV_LOG_ERROR, "Muxing variable packet size not supported on non seekable output\n");
        return AVERROR_INVALIDDATA;
    }

    if (par->codec_id != AV_CODEC_ID_MP3 || frame_size != 576)
        frame_size = FUNC20(par->codec_id, par->channels, par->block_align);

    FUNC19(pb, "caff"); //< mFileType
    FUNC10(pb, 1);         //< mFileVersion
    FUNC10(pb, 0);         //< mFileFlags

    FUNC19(pb, "desc");                         //< Audio Description chunk
    FUNC12(pb, 32);                                //< mChunkSize
    FUNC12(pb, FUNC3(par->sample_rate));   //< mSampleRate
    FUNC13(pb, codec_tag);                         //< mFormatID
    FUNC11(pb, FUNC15(par->codec_id));        //< mFormatFlags
    FUNC11(pb, par->block_align);                  //< mBytesPerPacket
    FUNC11(pb, frame_size);                        //< mFramesPerPacket
    FUNC11(pb, par->channels);                     //< mChannelsPerFrame
    FUNC11(pb, FUNC4(par->codec_id)); //< mBitsPerChannel

    if (par->channel_layout) {
        FUNC19(pb, "chan");
        FUNC12(pb, 12);
        FUNC17(pb, par->channel_layout);
    }

    if (par->codec_id == AV_CODEC_ID_ALAC) {
        FUNC19(pb, "kuki");
        FUNC12(pb, 12 + par->extradata_size);
        FUNC14(pb, "\0\0\0\14frmaalac", 12);
        FUNC14(pb, par->extradata, par->extradata_size);
    } else if (par->codec_id == AV_CODEC_ID_AMR_NB) {
        FUNC19(pb, "kuki");
        FUNC12(pb, 29);
        FUNC14(pb, "\0\0\0\14frmasamr", 12);
        FUNC11(pb, 0x11); /* size */
        FUNC14(pb, "samrFFMP", 8);
        FUNC9(pb, 0); /* decoder version */

        FUNC10(pb, 0x81FF); /* Mode set (all modes for AMR_NB) */
        FUNC9(pb, 0x00); /* Mode change period (no restriction) */
        FUNC9(pb, 0x01); /* Frames per sample */
    } else if (par->codec_id == AV_CODEC_ID_QDM2 || par->codec_id == AV_CODEC_ID_QDMC) {
        FUNC19(pb, "kuki");
        FUNC12(pb, par->extradata_size);
        FUNC14(pb, par->extradata, par->extradata_size);
    }

    FUNC18(s);
    if (FUNC1(s->metadata)) {
        FUNC19(pb, "info"); //< Information chunk
        while ((t = FUNC2(s->metadata, "", t, AV_DICT_IGNORE_SUFFIX))) {
            chunk_size += FUNC21(t->key) + FUNC21(t->value) + 2;
        }
        FUNC12(pb, chunk_size + 4);
        FUNC11(pb, FUNC1(s->metadata));
        t = NULL;
        while ((t = FUNC2(s->metadata, "", t, AV_DICT_IGNORE_SUFFIX))) {
            FUNC7(pb, t->key);
            FUNC7(pb, t->value);
        }
    }

    FUNC19(pb, "data"); //< Audio Data chunk
    caf->data = FUNC8(pb);
    FUNC12(pb, -1);        //< mChunkSize
    FUNC11(pb, 0);         //< mEditCount

    FUNC6(pb);
    return 0;
}
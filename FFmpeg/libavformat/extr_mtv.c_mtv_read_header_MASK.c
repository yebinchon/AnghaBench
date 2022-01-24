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
struct TYPE_14__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int /*<<< orphan*/  need_parsing; TYPE_1__* codecpar; } ;
struct TYPE_12__ {int audio_br; int img_bpp; int img_width; int img_height; int img_segment_size; unsigned int full_segment_size; int video_fps; void* img_colorfmt; void* audio_identifier; void* segments; void* file_size; } ;
struct TYPE_11__ {int width; int height; int extradata_size; int bit_rate; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; int /*<<< orphan*/  extradata; int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ MTVDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_FULL ; 
 int /*<<< orphan*/  AV_CODEC_ID_MP3 ; 
 int /*<<< orphan*/  AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_PIX_FMT_RGB565BE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int MTV_ASUBCHUNK_DATA_SIZE ; 
 unsigned int MTV_AUDIO_PADDING_SIZE ; 
 int MTV_AUDIO_SAMPLING_RATE ; 
 scalar_t__ MTV_HEADER_SIZE ; 
 int MTV_IMAGE_DEFAULT_BPP ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,int,int) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    MTVDemuxContext *mtv = s->priv_data;
    AVIOContext   *pb  = s->pb;
    AVStream        *st;
    unsigned int    audio_subsegments;

    FUNC9(pb, 3);
    mtv->file_size         = FUNC7(pb);
    mtv->segments          = FUNC7(pb);
    FUNC9(pb, 32);
    mtv->audio_identifier  = FUNC6(pb);
    mtv->audio_br          = FUNC5(pb);
    mtv->img_colorfmt      = FUNC6(pb);
    mtv->img_bpp           = FUNC4(pb);
    mtv->img_width         = FUNC5(pb);
    mtv->img_height        = FUNC5(pb);
    mtv->img_segment_size  = FUNC5(pb);

    /* Assume 16bpp even if claimed otherwise.
     * We know its going to be RGBG565/555 anyway
     */
    if (mtv->img_bpp != MTV_IMAGE_DEFAULT_BPP) {
        FUNC1 (s, AV_LOG_WARNING, "Header claims %dbpp (!= 16). Ignoring\n",
                mtv->img_bpp);
        mtv->img_bpp = MTV_IMAGE_DEFAULT_BPP;
    }

    /* Calculate width and height if missing from header */

    if (!mtv->img_width && mtv->img_height > 0 && mtv->img_bpp >= 8)
        mtv->img_width=mtv->img_segment_size / (mtv->img_bpp>>3)
                        / mtv->img_height;

    if (!mtv->img_height && mtv->img_width > 0 && mtv->img_bpp >= 8)
        mtv->img_height=mtv->img_segment_size / (mtv->img_bpp>>3)
                        / mtv->img_width;

    if(!mtv->img_height || !mtv->img_width || !mtv->img_segment_size){
        FUNC1(s, AV_LOG_ERROR, "width or height or segment_size is invalid and I cannot calculate them from other information\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC9(pb, 4);
    audio_subsegments = FUNC5(pb);

    if (audio_subsegments == 0) {
        FUNC10(s, "MTV files without audio");
        return AVERROR_PATCHWELCOME;
    }

    mtv->full_segment_size =
        audio_subsegments * (MTV_AUDIO_PADDING_SIZE + MTV_ASUBCHUNK_DATA_SIZE) +
        mtv->img_segment_size;
    mtv->video_fps         = (mtv->audio_br / 4) / audio_subsegments;

    // FIXME Add sanity check here

    // all systems go! init decoders

    // video - raw rgb565

    st = FUNC3(s, NULL);
    if(!st)
        return FUNC0(ENOMEM);

    FUNC11(st, 64, 1, mtv->video_fps);
    st->codecpar->codec_type      = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id        = AV_CODEC_ID_RAWVIDEO;
    st->codecpar->format          = AV_PIX_FMT_RGB565BE;
    st->codecpar->width           = mtv->img_width;
    st->codecpar->height          = mtv->img_height;
    st->codecpar->extradata       = FUNC2("BottomUp");
    if (!st->codecpar->extradata)
        return FUNC0(ENOMEM);
    st->codecpar->extradata_size  = 9;

    // audio - mp3

    st = FUNC3(s, NULL);
    if(!st)
        return FUNC0(ENOMEM);

    FUNC11(st, 64, 1, MTV_AUDIO_SAMPLING_RATE);
    st->codecpar->codec_type      = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id        = AV_CODEC_ID_MP3;
    st->codecpar->bit_rate        = mtv->audio_br;
    st->need_parsing              = AVSTREAM_PARSE_FULL;

    // Jump over header

    if(FUNC8(pb, MTV_HEADER_SIZE, SEEK_SET) != MTV_HEADER_SIZE)
        return FUNC0(EIO);

    return 0;

}
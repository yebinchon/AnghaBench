#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_22__ {int sample_rate; void* codecpriv_offset; void* sample_rate_offset; } ;
typedef  TYPE_3__ mkv_track ;
typedef  void* int64_t ;
struct TYPE_26__ {int codec_id; int extradata_size; int /*<<< orphan*/  extradata; } ;
struct TYPE_25__ {TYPE_2__* pb; TYPE_1__** streams; TYPE_4__* priv_data; } ;
struct TYPE_24__ {size_t stream_index; } ;
struct TYPE_23__ {int /*<<< orphan*/  tracks_bc; int /*<<< orphan*/  is_live; TYPE_3__* tracks; } ;
struct TYPE_21__ {int seekable; } ;
struct TYPE_20__ {TYPE_7__* codecpar; } ;
typedef  TYPE_4__ MatroskaMuxContext ;
typedef  TYPE_5__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;
typedef  TYPE_7__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVIO_SEEKABLE_NORMAL ; 
#define  AV_CODEC_ID_AAC 130 
#define  AV_CODEC_ID_AV1 129 
#define  AV_CODEC_ID_FLAC 128 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_DATA_NEW_EXTRADATA ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  MATROSKA_ID_AUDIOOUTSAMPLINGFREQ ; 
 int /*<<< orphan*/  MATROSKA_ID_AUDIOSAMPLINGFREQ ; 
 int /*<<< orphan*/  MATROSKA_ID_CODECPRIVATE ; 
 int /*<<< orphan*/  MAX_PCE_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int*) ; 
 TYPE_7__* FUNC5 () ; 
 int FUNC6 (TYPE_7__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__**) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC14 (TYPE_6__*,int /*<<< orphan*/ *,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC20(AVFormatContext *s, AVPacket *pkt)
{
    MatroskaMuxContext *mkv = s->priv_data;
    mkv_track *track        = &mkv->tracks[pkt->stream_index];
    AVCodecParameters *par  = s->streams[pkt->stream_index]->codecpar;
    uint8_t *side_data;
    int side_data_size = 0, ret;

    side_data = FUNC4(pkt, AV_PKT_DATA_NEW_EXTRADATA,
                                        &side_data_size);

    switch (par->codec_id) {
    case AV_CODEC_ID_AAC:
        if (side_data_size && (s->pb->seekable & AVIO_SEEKABLE_NORMAL) && !mkv->is_live) {
            int filler, output_sample_rate = 0;
            int64_t curpos;
            ret = FUNC14(s, side_data, side_data_size, &track->sample_rate,
                                       &output_sample_rate);
            if (ret < 0)
                return ret;
            if (!output_sample_rate)
                output_sample_rate = track->sample_rate; // Space is already reserved, so it's this or a void element.
            FUNC2(&par->extradata);
            ret = FUNC12(par, side_data_size);
            if (ret < 0)
                return ret;
            FUNC15(par->extradata, side_data, side_data_size);
            curpos = FUNC11(mkv->tracks_bc);
            FUNC10(mkv->tracks_bc, track->codecpriv_offset, SEEK_SET);
            FUNC16(s, mkv->tracks_bc, par, 1, 0);
            filler = MAX_PCE_SIZE + 2 + 4 - (FUNC11(mkv->tracks_bc) - track->codecpriv_offset);
            if (filler)
                FUNC19(mkv->tracks_bc, filler);
            FUNC10(mkv->tracks_bc, track->sample_rate_offset, SEEK_SET);
            FUNC18(mkv->tracks_bc, MATROSKA_ID_AUDIOSAMPLINGFREQ, track->sample_rate);
            FUNC18(mkv->tracks_bc, MATROSKA_ID_AUDIOOUTSAMPLINGFREQ, output_sample_rate);
            FUNC10(mkv->tracks_bc, curpos, SEEK_SET);
        } else if (!par->extradata_size && !track->sample_rate) {
            // No extradata (codecpar or packet side data).
            FUNC3(s, AV_LOG_ERROR, "Error parsing AAC extradata, unable to determine samplerate.\n");
            return FUNC0(EINVAL);
        }
        break;
    case AV_CODEC_ID_FLAC:
        if (side_data_size && (s->pb->seekable & AVIO_SEEKABLE_NORMAL) && !mkv->is_live) {
            AVCodecParameters *codecpriv_par;
            int64_t curpos;
            if (side_data_size != par->extradata_size) {
                FUNC3(s, AV_LOG_ERROR, "Invalid FLAC STREAMINFO metadata for output stream %d\n",
                       pkt->stream_index);
                return FUNC0(EINVAL);
            }
            codecpriv_par = FUNC5();
            if (!codecpriv_par)
                return FUNC0(ENOMEM);
            ret = FUNC6(codecpriv_par, par);
            if (ret < 0) {
                FUNC7(&codecpriv_par);
                return ret;
            }
            FUNC15(codecpriv_par->extradata, side_data, side_data_size);
            curpos = FUNC11(mkv->tracks_bc);
            FUNC10(mkv->tracks_bc, track->codecpriv_offset, SEEK_SET);
            FUNC16(s, mkv->tracks_bc, codecpriv_par, 1, 0);
            FUNC10(mkv->tracks_bc, curpos, SEEK_SET);
            FUNC7(&codecpriv_par);
        }
        break;
    // FIXME: Remove the following once libaom starts propagating extradata during init()
    //        See https://bugs.chromium.org/p/aomedia/issues/detail?id=2012
    case AV_CODEC_ID_AV1:
        if (side_data_size && (s->pb->seekable & AVIO_SEEKABLE_NORMAL) && !mkv->is_live &&
            !par->extradata_size) {
            AVIOContext *dyn_cp;
            uint8_t *codecpriv;
            int codecpriv_size;
            int64_t curpos;
            ret = FUNC9(&dyn_cp);
            if (ret < 0)
                return ret;
            FUNC13(dyn_cp, side_data, side_data_size);
            codecpriv_size = FUNC8(dyn_cp, &codecpriv);
            if (!codecpriv_size) {
                FUNC1(codecpriv);
                return AVERROR_INVALIDDATA;
            }
            curpos = FUNC11(mkv->tracks_bc);
            FUNC10(mkv->tracks_bc, track->codecpriv_offset, SEEK_SET);
            // Do not write the OBUs as we don't have space saved for them
            FUNC17(mkv->tracks_bc, MATROSKA_ID_CODECPRIVATE, codecpriv, 4);
            FUNC1(codecpriv);
            FUNC10(mkv->tracks_bc, curpos, SEEK_SET);
            ret = FUNC12(par, side_data_size);
            if (ret < 0)
                return ret;
            FUNC15(par->extradata, side_data, side_data_size);
        } else if (!par->extradata_size)
            return AVERROR_INVALIDDATA;
        break;
    default:
        if (side_data_size)
            FUNC3(s, AV_LOG_DEBUG, "Ignoring new extradata in a packet for stream %d.\n", pkt->stream_index);
        break;
    }

    return 0;
}
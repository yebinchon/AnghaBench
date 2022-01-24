#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_4__* pb; TYPE_2__* priv_data; } ;
struct TYPE_21__ {int seekable; } ;
struct TYPE_20__ {TYPE_1__* codecpar; scalar_t__ nb_frames; } ;
struct TYPE_19__ {scalar_t__ leading; } ;
struct TYPE_18__ {scalar_t__ height; scalar_t__ width; scalar_t__ codec_tag; int /*<<< orphan*/  format; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ FilmstripDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PIX_FMT_RGBA ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ RAND_TAG ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC3 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    FilmstripDemuxContext *film = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st;

    if (!(s->pb->seekable & AVIO_SEEKABLE_NORMAL))
        return FUNC0(EIO);

    FUNC6(pb, FUNC7(pb) - 36, SEEK_SET);
    if (FUNC5(pb) != RAND_TAG) {
        FUNC2(s, AV_LOG_ERROR, "magic number not found\n");
        return AVERROR_INVALIDDATA;
    }

    st = FUNC3(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->nb_frames = FUNC5(pb);
    if (FUNC4(pb) != 0) {
        FUNC9(s, "Unsupported packing method");
        return AVERROR_PATCHWELCOME;
    }

    FUNC8(pb, 2);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id   = AV_CODEC_ID_RAWVIDEO;
    st->codecpar->format     = AV_PIX_FMT_RGBA;
    st->codecpar->codec_tag  = 0; /* no fourcc */
    st->codecpar->width      = FUNC4(pb);
    st->codecpar->height     = FUNC4(pb);
    film->leading         = FUNC4(pb);

    if (FUNC1(st->codecpar->width, st->codecpar->height, 0, s) < 0)
        return AVERROR_INVALIDDATA;

    FUNC10(st, 64, 1, FUNC4(pb));

    FUNC6(pb, 0, SEEK_SET);

    return 0;
}
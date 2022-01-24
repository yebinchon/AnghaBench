#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_17__ {int nb_streams; TYPE_5__** streams; int /*<<< orphan*/ * pb; TYPE_4__* priv_data; } ;
struct TYPE_16__ {TYPE_2__* codecpar; TYPE_3__* priv_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  drop; } ;
struct TYPE_14__ {int media_info; int /*<<< orphan*/  sample_size; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  track_type; } ;
struct TYPE_15__ {int umf_media_offset; int umf_start_offset; TYPE_1__ tc; TYPE_3__ timecode_track; int /*<<< orphan*/  nb_fields; } ;
struct TYPE_13__ {int codec_id; } ;
typedef  TYPE_3__ GXFStreamContext ;
typedef  TYPE_4__ GXFContext ;
typedef  TYPE_5__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
#define  AV_CODEC_ID_DVVIDEO 131 
#define  AV_CODEC_ID_MPEG1VIDEO 130 
#define  AV_CODEC_ID_MPEG2VIDEO 129 
#define  AV_CODEC_ID_PCM_S16LE 128 
 int /*<<< orphan*/  ES_NAME_PATTERN ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    GXFContext *gxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t pos;
    int i, j;

    pos = FUNC1(pb);
    gxf->umf_media_offset = pos - gxf->umf_start_offset;
    for (i = 0; i <= s->nb_streams; ++i) {
        GXFStreamContext *sc;
        int64_t startpos, curpos;

        if (i == s->nb_streams)
            sc = &gxf->timecode_track;
        else
            sc = s->streams[i]->priv_data;

        startpos = FUNC1(pb);
        FUNC4(pb, 0); /* length */
        FUNC4(pb, sc->media_info);
        FUNC4(pb, 0); /* reserved */
        FUNC4(pb, 0); /* reserved */
        FUNC5(pb, gxf->nb_fields);
        FUNC5(pb, 0); /* attributes rw, ro */
        FUNC5(pb, 0); /* mark in */
        FUNC5(pb, gxf->nb_fields); /* mark out */
        FUNC6(pb, ES_NAME_PATTERN, FUNC11(ES_NAME_PATTERN));
        FUNC3(pb, sc->media_info);
        for (j = FUNC11(ES_NAME_PATTERN)+2; j < 88; j++)
            FUNC2(pb, 0);
        FUNC5(pb, sc->track_type);
        FUNC5(pb, sc->sample_rate);
        FUNC5(pb, sc->sample_size);
        FUNC5(pb, 0); /* reserved */

        if (sc == &gxf->timecode_track)
            FUNC10(pb, gxf->tc.drop);
        else {
            AVStream *st = s->streams[i];
            switch (st->codecpar->codec_id) {
            case AV_CODEC_ID_MPEG1VIDEO:
            case AV_CODEC_ID_MPEG2VIDEO:
                FUNC9(pb, st);
                break;
            case AV_CODEC_ID_PCM_S16LE:
                FUNC7(pb, sc);
                break;
            case AV_CODEC_ID_DVVIDEO:
                FUNC8(pb, sc, st);
                break;
            }
        }

        curpos = FUNC1(pb);
        FUNC0(pb, startpos, SEEK_SET);
        FUNC4(pb, curpos - startpos);
        FUNC0(pb, curpos, SEEK_SET);
    }
    return FUNC1(pb) - pos;
}
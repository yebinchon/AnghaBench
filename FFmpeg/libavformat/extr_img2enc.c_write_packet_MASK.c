#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  filename ;
struct TYPE_30__ {char* path; int img_number; char** tmp; char** target; int /*<<< orphan*/  is_pipe; scalar_t__ muxer; scalar_t__ split_planes; scalar_t__ use_rename; scalar_t__ frame_pts; scalar_t__ use_strftime; scalar_t__ update; } ;
typedef  TYPE_3__ VideoMuxData ;
struct TYPE_35__ {int width; int height; int /*<<< orphan*/  format; } ;
struct TYPE_34__ {scalar_t__ (* io_open ) (TYPE_7__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;TYPE_1__** streams; int /*<<< orphan*/ * pb; int /*<<< orphan*/  url; TYPE_3__* priv_data; } ;
struct TYPE_33__ {size_t stream_index; int pts; int size; scalar_t__ data; int /*<<< orphan*/  member_0; } ;
struct TYPE_32__ {int nb_components; TYPE_2__* comp; int /*<<< orphan*/  log2_chroma_h; int /*<<< orphan*/  log2_chroma_w; } ;
struct TYPE_31__ {size_t id; int /*<<< orphan*/  codecpar; } ;
struct TYPE_29__ {int depth; } ;
struct TYPE_28__ {TYPE_8__* codecpar; } ;
typedef  TYPE_4__ AVStream ;
typedef  TYPE_5__ AVPixFmtDescriptor ;
typedef  TYPE_6__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_7__ AVFormatContext ;
typedef  TYPE_8__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_FRAME_FILENAME_FLAGS_MULTIPLE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_7__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (TYPE_6__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int FUNC10 (TYPE_7__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int FUNC12 (TYPE_7__**,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 TYPE_4__* FUNC14 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*,int /*<<< orphan*/ **) ; 
 int FUNC19 (char*,char*,TYPE_7__*) ; 
 struct tm* FUNC20 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*,struct tm*) ; 
 int FUNC23 (char*) ; 
 scalar_t__ FUNC24 (TYPE_7__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(AVFormatContext *s, AVPacket *pkt)
{
    VideoMuxData *img = s->priv_data;
    AVIOContext *pb[4];
    char filename[1024];
    AVCodecParameters *par = s->streams[pkt->stream_index]->codecpar;
    const AVPixFmtDescriptor *desc = FUNC8(par->format);
    int i;
    int nb_renames = 0;

    if (!img->is_pipe) {
        if (img->update) {
            FUNC9(filename, img->path, sizeof(filename));
        } else if (img->use_strftime) {
            time_t now0;
            struct tm *tm, tmpbuf;
            FUNC25(&now0);
            tm = FUNC20(&now0, &tmpbuf);
            if (!FUNC22(filename, sizeof(filename), img->path, tm)) {
                FUNC5(s, AV_LOG_ERROR, "Could not get frame filename with strftime\n");
                return FUNC0(EINVAL);
            }
        } else if (img->frame_pts) {
            if (FUNC3(filename, sizeof(filename), img->path, pkt->pts, AV_FRAME_FILENAME_FLAGS_MULTIPLE) < 0) {
                FUNC5(s, AV_LOG_ERROR, "Cannot write filename by pts of the frames.");
                return FUNC0(EINVAL);
            }
        } else if (FUNC3(filename, sizeof(filename), img->path,
                                          img->img_number,
                                          AV_FRAME_FILENAME_FLAGS_MULTIPLE) < 0 &&
                   img->img_number > 1) {
            FUNC5(s, AV_LOG_ERROR,
                   "Could not get frame filename number %d from pattern '%s'. "
                   "Use '-frames:v 1' for a single image, or '-update' option, or use a pattern such as %%03d within the filename.\n",
                   img->img_number, img->path);
            return FUNC0(EINVAL);
        }
        for (i = 0; i < 4; i++) {
            FUNC21(img->tmp[i], sizeof(img->tmp[i]), "%s.tmp", filename);
            FUNC9(img->target[i], filename, sizeof(img->target[i]));
            if (s->io_open(s, &pb[i], img->use_rename ? img->tmp[i] : filename, AVIO_FLAG_WRITE, NULL) < 0) {
                FUNC5(s, AV_LOG_ERROR, "Could not open file : %s\n", img->use_rename ? img->tmp[i] : filename);
                return FUNC0(EIO);
            }

            if (!img->split_planes || i+1 >= desc->nb_components)
                break;
            filename[FUNC23(filename) - 1] = "UVAx"[i];
        }
        if (img->use_rename)
            nb_renames = i + 1;
    } else {
        pb[0] = s->pb;
    }

    if (img->split_planes) {
        int ysize = par->width * par->height;
        int usize = FUNC1(par->width, desc->log2_chroma_w) * FUNC1(par->height, desc->log2_chroma_h);
        if (desc->comp[0].depth >= 9) {
            ysize *= 2;
            usize *= 2;
        }
        FUNC17(pb[0], pkt->data                , ysize);
        FUNC17(pb[1], pkt->data + ysize        , usize);
        FUNC17(pb[2], pkt->data + ysize + usize, usize);
        FUNC18(s, &pb[1]);
        FUNC18(s, &pb[2]);
        if (desc->nb_components > 3) {
            FUNC17(pb[3], pkt->data + ysize + 2*usize, ysize);
            FUNC18(s, &pb[3]);
        }
    } else if (img->muxer) {
        int ret;
        AVStream *st;
        AVPacket pkt2 = {0};
        AVFormatContext *fmt = NULL;

        FUNC2(!img->split_planes);

        ret = FUNC12(&fmt, NULL, img->muxer, s->url);
        if (ret < 0)
            return ret;
        st = FUNC14(fmt, NULL);
        if (!st) {
            FUNC13(fmt);
            return FUNC0(ENOMEM);
        }
        st->id = pkt->stream_index;

        fmt->pb = pb[0];
        if ((ret = FUNC6(&pkt2, pkt))                             < 0 ||
            (ret = FUNC11(st->codecpar, s->streams[0]->codecpar)) < 0 ||
            (ret = FUNC15(fmt, NULL))                      < 0 ||
            (ret = FUNC4(fmt, &pkt2))                < 0 ||
            (ret = FUNC10(fmt))                                 < 0) {
            FUNC7(&pkt2);
            FUNC13(fmt);
            return ret;
        }
        FUNC7(&pkt2);
        FUNC13(fmt);
    } else {
        FUNC17(pb[0], pkt->data, pkt->size);
    }
    FUNC16(pb[0]);
    if (!img->is_pipe) {
        FUNC18(s, &pb[0]);
        for (i = 0; i < nb_renames; i++) {
            int ret = FUNC19(img->tmp[i], img->target[i], s);
            if (ret < 0)
                return ret;
        }
    }

    img->img_number++;
    return 0;
}
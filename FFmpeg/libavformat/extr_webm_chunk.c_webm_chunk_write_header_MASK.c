#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ http_method; TYPE_3__* avf; int /*<<< orphan*/  prev_pts; int /*<<< orphan*/  oformat; int /*<<< orphan*/  chunk_start_index; int /*<<< orphan*/  chunk_index; } ;
typedef  TYPE_2__ WebMChunkContext ;
struct TYPE_16__ {scalar_t__ seekable; } ;
struct TYPE_15__ {int nb_streams; int (* io_open ) (TYPE_3__*,TYPE_7__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ;int /*<<< orphan*/ * streams; TYPE_7__* pb; TYPE_1__* oformat; int /*<<< orphan*/  url; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int (* write_header ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_MUXER_NOT_FOUND ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAX_FILENAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int FUNC9 (TYPE_3__*,int,char*) ; 
 int FUNC10 (TYPE_3__*,TYPE_7__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    WebMChunkContext *wc = s->priv_data;
    AVFormatContext *oc = NULL;
    int ret;
    int i;
    AVDictionary *options = NULL;
    char oc_filename[MAX_FILENAME_SIZE];
    char *oc_url;

    // DASH Streams can only have either one track per file.
    if (s->nb_streams != 1) { return AVERROR_INVALIDDATA; }

    wc->chunk_index = wc->chunk_start_index;
    wc->oformat = FUNC3("webm", s->url, "video/webm");
    if (!wc->oformat)
        return AVERROR_MUXER_NOT_FOUND;
    wc->prev_pts = AV_NOPTS_VALUE;

    ret = FUNC6(s);
    if (ret < 0)
        return ret;
    oc = wc->avf;
    ret = FUNC9(s, 1, oc_filename);
    if (ret < 0)
        return ret;
    oc_url = FUNC4(oc_filename);
    if (!oc_url)
        return FUNC0(ENOMEM);
    FUNC8(oc, oc_url);
    if (wc->http_method)
        FUNC2(&options, "method", wc->http_method, 0);
    ret = s->io_open(s, &oc->pb, oc->url, AVIO_FLAG_WRITE, &options);
    FUNC1(&options);
    if (ret < 0)
        return ret;

    oc->pb->seekable = 0;
    ret = oc->oformat->write_header(oc);
    if (ret < 0)
        return ret;
    FUNC7(s, &oc->pb);
    for (i = 0; i < s->nb_streams; i++) {
        // ms precision is the de-facto standard timescale for mkv files.
        FUNC5(s->streams[i], 64, 1, 1000);
    }
    return 0;
}
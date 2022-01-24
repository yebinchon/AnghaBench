#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ seekable; } ;
struct TYPE_15__ {int (* io_open ) (TYPE_3__*,TYPE_5__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;TYPE_2__* priv_data; TYPE_1__* oformat; TYPE_5__* pb; int /*<<< orphan*/  url; } ;
struct TYPE_14__ {int segment_idx; int segment_idx_wrap; scalar_t__ segment_frame_count; int /*<<< orphan*/  format_options; int /*<<< orphan*/  individual_header_trailer; int /*<<< orphan*/  segment_idx_wrap_nb; TYPE_3__* avf; } ;
struct TYPE_13__ {scalar_t__ priv_class; } ;
typedef  TYPE_2__ SegmentContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 int FUNC7 (TYPE_3__*) ; 
 int FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*,TYPE_5__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s, int write_header)
{
    SegmentContext *seg = s->priv_data;
    AVFormatContext *oc = seg->avf;
    int err = 0;

    if (write_header) {
        FUNC5(oc);
        seg->avf = NULL;
        if ((err = FUNC7(s)) < 0)
            return err;
        oc = seg->avf;
    }

    seg->segment_idx++;
    if ((seg->segment_idx_wrap) && (seg->segment_idx % seg->segment_idx_wrap == 0))
        seg->segment_idx_wrap_nb++;

    if ((err = FUNC8(s)) < 0)
        return err;

    if ((err = s->io_open(s, &oc->pb, oc->url, AVIO_FLAG_WRITE, NULL)) < 0) {
        FUNC3(s, AV_LOG_ERROR, "Failed to open segment '%s'\n", oc->url);
        return err;
    }
    if (!seg->individual_header_trailer)
        oc->pb->seekable = 0;

    if (oc->oformat->priv_class && oc->priv_data)
        FUNC4(oc->priv_data, "mpegts_flags", "+resend_headers", 0);

    if (write_header) {
        AVDictionary *options = NULL;
        FUNC0(&options, seg->format_options, 0);
        FUNC2(&options, "fflags", "-autobsf", 0);
        err = FUNC6(oc, &options);
        FUNC1(&options);
        if (err < 0)
            return err;
    }

    seg->segment_frame_count = 0;
    return 0;
}
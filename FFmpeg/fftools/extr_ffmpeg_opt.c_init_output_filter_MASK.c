#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int type; int format; int /*<<< orphan*/  out_tmp; TYPE_1__* ost; } ;
struct TYPE_6__ {int source_index; int /*<<< orphan*/  index; int /*<<< orphan*/  file_index; scalar_t__ filters_script; scalar_t__ filters; scalar_t__ avfilter; scalar_t__ stream_copy; TYPE_2__* filter; } ;
typedef  TYPE_1__ OutputStream ;
typedef  TYPE_2__ OutputFilter ;
typedef  int /*<<< orphan*/  OptionsContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
#define  AVMEDIA_TYPE_AUDIO 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(OutputFilter *ofilter, OptionsContext *o,
                               AVFormatContext *oc)
{
    OutputStream *ost;

    switch (ofilter->type) {
    case AVMEDIA_TYPE_VIDEO: ost = FUNC4(o, oc, -1); break;
    case AVMEDIA_TYPE_AUDIO: ost = FUNC3(o, oc, -1); break;
    default:
        FUNC0(NULL, AV_LOG_FATAL, "Only video and audio filters are supported "
               "currently.\n");
        FUNC2(1);
    }

    ost->source_index = -1;
    ost->filter       = ofilter;

    ofilter->ost      = ost;
    ofilter->format   = -1;

    if (ost->stream_copy) {
        FUNC0(NULL, AV_LOG_ERROR, "Streamcopy requested for output stream %d:%d, "
               "which is fed from a complex filtergraph. Filtering and streamcopy "
               "cannot be used together.\n", ost->file_index, ost->index);
        FUNC2(1);
    }

    if (ost->avfilter && (ost->filters || ost->filters_script)) {
        const char *opt = ost->filters ? "-vf/-af/-filter" : "-filter_script";
        FUNC0(NULL, AV_LOG_ERROR,
               "%s '%s' was specified through the %s option "
               "for output stream %d:%d, which is fed from a complex filtergraph.\n"
               "%s and -filter_complex cannot be used together for the same stream.\n",
               ost->filters ? "Filtergraph" : "Filtergraph script",
               ost->filters ? ost->filters : ost->filters_script,
               opt, ost->file_index, ost->index, opt);
        FUNC2(1);
    }

    FUNC1(&ofilter->out_tmp);
}
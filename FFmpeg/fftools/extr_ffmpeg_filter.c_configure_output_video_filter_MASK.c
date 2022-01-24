#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_21__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
struct TYPE_20__ {int pad_idx; int /*<<< orphan*/ * filter_ctx; } ;
struct TYPE_19__ {int /*<<< orphan*/  graph; } ;
struct TYPE_18__ {int /*<<< orphan*/  recording_time; int /*<<< orphan*/  start_time; } ;
struct TYPE_17__ {size_t width; int height; int /*<<< orphan*/ * filter; TYPE_2__* ost; } ;
struct TYPE_15__ {size_t num; int den; } ;
struct TYPE_16__ {size_t file_index; int index; TYPE_1__ frame_rate; int /*<<< orphan*/  sws_dict; } ;
typedef  TYPE_2__ OutputStream ;
typedef  TYPE_3__ OutputFilter ;
typedef  TYPE_4__ OutputFile ;
typedef  TYPE_5__ FilterGraph ;
typedef  TYPE_6__ AVFilterInOut ;
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  TYPE_7__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 TYPE_7__* FUNC0 (int /*<<< orphan*/ ,char*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (TYPE_3__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,char*) ; 
 TYPE_4__** output_files ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,size_t,int) ; 

__attribute__((used)) static int FUNC9(FilterGraph *fg, OutputFilter *ofilter, AVFilterInOut *out)
{
    char *pix_fmts;
    OutputStream *ost = ofilter->ost;
    OutputFile    *of = output_files[ost->file_index];
    AVFilterContext *last_filter = out->filter_ctx;
    int pad_idx = out->pad_idx;
    int ret;
    char name[255];

    FUNC8(name, sizeof(name), "out_%d_%d", ost->file_index, ost->index);
    ret = FUNC4(&ofilter->filter,
                                       FUNC3("buffersink"),
                                       name, NULL, NULL, fg->graph);

    if (ret < 0)
        return ret;

    if (ofilter->width || ofilter->height) {
        char args[255];
        AVFilterContext *filter;
        AVDictionaryEntry *e = NULL;

        FUNC8(args, sizeof(args), "%d:%d",
                 ofilter->width, ofilter->height);

        while ((e = FUNC0(ost->sws_dict, "", e,
                                AV_DICT_IGNORE_SUFFIX))) {
            FUNC2(args, sizeof(args), ":%s=%s", e->key, e->value);
        }

        FUNC8(name, sizeof(name), "scaler_out_%d_%d",
                 ost->file_index, ost->index);
        if ((ret = FUNC4(&filter, FUNC3("scale"),
                                                name, args, NULL, fg->graph)) < 0)
            return ret;
        if ((ret = FUNC5(last_filter, pad_idx, filter, 0)) < 0)
            return ret;

        last_filter = filter;
        pad_idx = 0;
    }

    if ((pix_fmts = FUNC6(ofilter))) {
        AVFilterContext *filter;
        FUNC8(name, sizeof(name), "format_out_%d_%d",
                 ost->file_index, ost->index);
        ret = FUNC4(&filter,
                                           FUNC3("format"),
                                           "format", pix_fmts, NULL, fg->graph);
        FUNC1(&pix_fmts);
        if (ret < 0)
            return ret;
        if ((ret = FUNC5(last_filter, pad_idx, filter, 0)) < 0)
            return ret;

        last_filter = filter;
        pad_idx     = 0;
    }

    if (ost->frame_rate.num && 0) {
        AVFilterContext *fps;
        char args[255];

        FUNC8(args, sizeof(args), "fps=%d/%d", ost->frame_rate.num,
                 ost->frame_rate.den);
        FUNC8(name, sizeof(name), "fps_out_%d_%d",
                 ost->file_index, ost->index);
        ret = FUNC4(&fps, FUNC3("fps"),
                                           name, args, NULL, fg->graph);
        if (ret < 0)
            return ret;

        ret = FUNC5(last_filter, pad_idx, fps, 0);
        if (ret < 0)
            return ret;
        last_filter = fps;
        pad_idx = 0;
    }

    FUNC8(name, sizeof(name), "trim_out_%d_%d",
             ost->file_index, ost->index);
    ret = FUNC7(of->start_time, of->recording_time,
                      &last_filter, &pad_idx, name);
    if (ret < 0)
        return ret;


    if ((ret = FUNC5(last_filter, pad_idx, ofilter->filter, 0)) < 0)
        return ret;

    return 0;
}
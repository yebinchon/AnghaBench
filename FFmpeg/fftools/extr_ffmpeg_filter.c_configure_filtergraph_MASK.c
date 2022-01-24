#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_49__   TYPE_9__ ;
typedef  struct TYPE_48__   TYPE_8__ ;
typedef  struct TYPE_47__   TYPE_7__ ;
typedef  struct TYPE_46__   TYPE_6__ ;
typedef  struct TYPE_45__   TYPE_5__ ;
typedef  struct TYPE_44__   TYPE_4__ ;
typedef  struct TYPE_43__   TYPE_3__ ;
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_26__ ;
typedef  struct TYPE_40__   TYPE_21__ ;
typedef  struct TYPE_39__   TYPE_1__ ;
typedef  struct TYPE_38__   TYPE_16__ ;
typedef  struct TYPE_37__   TYPE_13__ ;
typedef  struct TYPE_36__   TYPE_12__ ;
typedef  struct TYPE_35__   TYPE_11__ ;
typedef  struct TYPE_34__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_49__ {TYPE_8__* ost; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; int /*<<< orphan*/ * filter; } ;
struct TYPE_48__ {char* avfilter; char const* file_index; char const* index; TYPE_6__* enc_ctx; TYPE_5__* filter; TYPE_4__* enc; TYPE_3__* st; int /*<<< orphan*/  encoder_opts; int /*<<< orphan*/  resample_opts; int /*<<< orphan*/  swr_opts; int /*<<< orphan*/  sws_dict; } ;
struct TYPE_47__ {scalar_t__ sub_queue; scalar_t__ frame; } ;
struct TYPE_46__ {int /*<<< orphan*/  frame_size; } ;
struct TYPE_45__ {int /*<<< orphan*/  filter; } ;
struct TYPE_44__ {scalar_t__ type; int capabilities; } ;
struct TYPE_43__ {TYPE_2__* codecpar; } ;
struct TYPE_42__ {int /*<<< orphan*/  codec_id; } ;
struct TYPE_41__ {int nb_filters; TYPE_1__** filters; int /*<<< orphan*/  nb_threads; int /*<<< orphan*/  scale_sws_opts; } ;
struct TYPE_40__ {TYPE_10__* ist; int /*<<< orphan*/  filter; scalar_t__ eof; scalar_t__ frame_queue; } ;
struct TYPE_39__ {int /*<<< orphan*/  hw_device_ctx; } ;
struct TYPE_38__ {int /*<<< orphan*/ * device_ref; } ;
struct TYPE_37__ {char* value; int /*<<< orphan*/  key; } ;
struct TYPE_36__ {struct TYPE_36__* next; } ;
struct TYPE_35__ {char* graph_desc; int nb_outputs; int reconfiguration; int nb_inputs; TYPE_21__** inputs; TYPE_9__** outputs; TYPE_26__* graph; } ;
struct TYPE_34__ {TYPE_7__ sub2video; } ;
typedef  TYPE_8__ OutputStream ;
typedef  TYPE_9__ OutputFilter ;
typedef  TYPE_10__ InputStream ;
typedef  TYPE_11__ FilterGraph ;
typedef  int /*<<< orphan*/ * AVSubtitle ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_12__ AVFilterInOut ;
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  TYPE_13__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 int AV_CODEC_CAP_VARIABLE_FRAME_SIZE ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_13__* FUNC9 (int /*<<< orphan*/ ,char*,TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_26__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,int /*<<< orphan*/ ,char*) ; 
 char const* FUNC17 (int /*<<< orphan*/ ) ; 
 TYPE_26__* FUNC18 () ; 
 int FUNC19 (TYPE_26__*,int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_26__*,char const*,TYPE_12__**,TYPE_12__**) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_12__**) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_11__*) ; 
 int FUNC24 (TYPE_11__*,TYPE_21__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_11__*,TYPE_9__*,TYPE_12__*) ; 
 int /*<<< orphan*/  filter_complex_nbthreads ; 
 TYPE_16__* filter_hw_device ; 
 int /*<<< orphan*/  filter_nbthreads ; 
 int FUNC26 (TYPE_11__*) ; 
 int /*<<< orphan*/ * hw_device_ctx ; 
 int FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_10__*,int /*<<< orphan*/ **) ; 

int FUNC29(FilterGraph *fg)
{
    AVFilterInOut *inputs, *outputs, *cur;
    int ret, i, simple = FUNC26(fg);
    const char *graph_desc = simple ? fg->outputs[0]->ost->avfilter :
                                      fg->graph_desc;

    FUNC23(fg);
    if (!(fg->graph = FUNC18()))
        return FUNC0(ENOMEM);

    if (simple) {
        OutputStream *ost = fg->outputs[0]->ost;
        char args[512];
        AVDictionaryEntry *e = NULL;

        fg->graph->nb_threads = filter_nbthreads;

        args[0] = 0;
        while ((e = FUNC9(ost->sws_dict, "", e,
                                AV_DICT_IGNORE_SUFFIX))) {
            FUNC16(args, sizeof(args), "%s=%s:", e->key, e->value);
        }
        if (FUNC27(args))
            args[FUNC27(args)-1] = 0;
        fg->graph->scale_sws_opts = FUNC15(args);

        args[0] = 0;
        while ((e = FUNC9(ost->swr_opts, "", e,
                                AV_DICT_IGNORE_SUFFIX))) {
            FUNC16(args, sizeof(args), "%s=%s:", e->key, e->value);
        }
        if (FUNC27(args))
            args[FUNC27(args)-1] = 0;
        FUNC14(fg->graph, "aresample_swr_opts", args, 0);

        args[0] = '\0';
        while ((e = FUNC9(fg->outputs[0]->ost->resample_opts, "", e,
                                AV_DICT_IGNORE_SUFFIX))) {
            FUNC16(args, sizeof(args), "%s=%s:", e->key, e->value);
        }
        if (FUNC27(args))
            args[FUNC27(args) - 1] = '\0';

        e = FUNC9(ost->encoder_opts, "threads", NULL, 0);
        if (e)
            FUNC14(fg->graph, "threads", e->value, 0);
    } else {
        fg->graph->nb_threads = filter_complex_nbthreads;
    }

    if ((ret = FUNC20(fg->graph, graph_desc, &inputs, &outputs)) < 0)
        goto fail;

    if (filter_hw_device || hw_device_ctx) {
        AVBufferRef *device = filter_hw_device ? filter_hw_device->device_ref
                                               : hw_device_ctx;
        for (i = 0; i < fg->graph->nb_filters; i++) {
            fg->graph->filters[i]->hw_device_ctx = FUNC1(device);
            if (!fg->graph->filters[i]->hw_device_ctx) {
                ret = FUNC0(ENOMEM);
                goto fail;
            }
        }
    }

    if (simple && (!inputs || inputs->next || !outputs || outputs->next)) {
        const char *num_inputs;
        const char *num_outputs;
        if (!outputs) {
            num_outputs = "0";
        } else if (outputs->next) {
            num_outputs = ">1";
        } else {
            num_outputs = "1";
        }
        if (!inputs) {
            num_inputs = "0";
        } else if (inputs->next) {
            num_inputs = ">1";
        } else {
            num_inputs = "1";
        }
        FUNC13(NULL, AV_LOG_ERROR, "Simple filtergraph '%s' was expected "
               "to have exactly 1 input and 1 output."
               " However, it had %s input(s) and %s output(s)."
               " Please adjust, or use a complex filtergraph (-filter_complex) instead.\n",
               graph_desc, num_inputs, num_outputs);
        ret = FUNC0(EINVAL);
        goto fail;
    }

    for (cur = inputs, i = 0; cur; cur = cur->next, i++)
        if ((ret = FUNC24(fg, fg->inputs[i], cur)) < 0) {
            FUNC21(&inputs);
            FUNC21(&outputs);
            goto fail;
        }
    FUNC21(&inputs);

    for (cur = outputs, i = 0; cur; cur = cur->next, i++)
        FUNC25(fg, fg->outputs[i], cur);
    FUNC21(&outputs);

    if ((ret = FUNC19(fg->graph, NULL)) < 0)
        goto fail;

    /* limit the lists of allowed formats to the ones selected, to
     * make sure they stay the same if the filtergraph is reconfigured later */
    for (i = 0; i < fg->nb_outputs; i++) {
        OutputFilter *ofilter = fg->outputs[i];
        AVFilterContext *sink = ofilter->filter;

        ofilter->format = FUNC3(sink);

        ofilter->width  = FUNC6(sink);
        ofilter->height = FUNC4(sink);

        ofilter->sample_rate    = FUNC5(sink);
        ofilter->channel_layout = FUNC2(sink);
    }

    fg->reconfiguration = 1;

    for (i = 0; i < fg->nb_outputs; i++) {
        OutputStream *ost = fg->outputs[i]->ost;
        if (!ost->enc) {
            /* identical to the same check in ffmpeg.c, needed because
               complex filter graphs are initialized earlier */
            FUNC13(NULL, AV_LOG_ERROR, "Encoder (codec %s) not found for output stream #%d:%d\n",
                     FUNC17(ost->st->codecpar->codec_id), ost->file_index, ost->index);
            ret = FUNC0(EINVAL);
            goto fail;
        }
        if (ost->enc->type == AVMEDIA_TYPE_AUDIO &&
            !(ost->enc->capabilities & AV_CODEC_CAP_VARIABLE_FRAME_SIZE))
            FUNC7(ost->filter->filter,
                                         ost->enc_ctx->frame_size);
    }

    for (i = 0; i < fg->nb_inputs; i++) {
        while (FUNC11(fg->inputs[i]->frame_queue)) {
            AVFrame *tmp;
            FUNC10(fg->inputs[i]->frame_queue, &tmp, sizeof(tmp), NULL);
            ret = FUNC8(fg->inputs[i]->filter, tmp);
            FUNC12(&tmp);
            if (ret < 0)
                goto fail;
        }
    }

    /* send the EOFs for the finished inputs */
    for (i = 0; i < fg->nb_inputs; i++) {
        if (fg->inputs[i]->eof) {
            ret = FUNC8(fg->inputs[i]->filter, NULL);
            if (ret < 0)
                goto fail;
        }
    }

    /* process queued up subtitle packets */
    for (i = 0; i < fg->nb_inputs; i++) {
        InputStream *ist = fg->inputs[i]->ist;
        if (ist->sub2video.sub_queue && ist->sub2video.frame) {
            while (FUNC11(ist->sub2video.sub_queue)) {
                AVSubtitle tmp;
                FUNC10(ist->sub2video.sub_queue, &tmp, sizeof(tmp), NULL);
                FUNC28(ist, &tmp);
                FUNC22(&tmp);
            }
        }
    }

    return 0;

fail:
    FUNC23(fg);
    return ret;
}
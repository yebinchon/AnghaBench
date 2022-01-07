
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int name ;
typedef int args ;
struct TYPE_21__ {int value; int key; } ;
struct TYPE_20__ {int pad_idx; int * filter_ctx; } ;
struct TYPE_19__ {int graph; } ;
struct TYPE_18__ {int recording_time; int start_time; } ;
struct TYPE_17__ {size_t width; int height; int * filter; TYPE_2__* ost; } ;
struct TYPE_15__ {size_t num; int den; } ;
struct TYPE_16__ {size_t file_index; int index; TYPE_1__ frame_rate; int sws_dict; } ;
typedef TYPE_2__ OutputStream ;
typedef TYPE_3__ OutputFilter ;
typedef TYPE_4__ OutputFile ;
typedef TYPE_5__ FilterGraph ;
typedef TYPE_6__ AVFilterInOut ;
typedef int AVFilterContext ;
typedef TYPE_7__ AVDictionaryEntry ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_7__* av_dict_get (int ,char*,TYPE_7__*,int ) ;
 int av_freep (char**) ;
 int av_strlcatf (char*,int,char*,int ,int ) ;
 int avfilter_get_by_name (char*) ;
 int avfilter_graph_create_filter (int **,int ,char*,char*,int *,int ) ;
 int avfilter_link (int *,int,int *,int ) ;
 char* choose_pix_fmts (TYPE_3__*) ;
 int insert_trim (int ,int ,int **,int*,char*) ;
 TYPE_4__** output_files ;
 int snprintf (char*,int,char*,size_t,int) ;

__attribute__((used)) static int configure_output_video_filter(FilterGraph *fg, OutputFilter *ofilter, AVFilterInOut *out)
{
    char *pix_fmts;
    OutputStream *ost = ofilter->ost;
    OutputFile *of = output_files[ost->file_index];
    AVFilterContext *last_filter = out->filter_ctx;
    int pad_idx = out->pad_idx;
    int ret;
    char name[255];

    snprintf(name, sizeof(name), "out_%d_%d", ost->file_index, ost->index);
    ret = avfilter_graph_create_filter(&ofilter->filter,
                                       avfilter_get_by_name("buffersink"),
                                       name, ((void*)0), ((void*)0), fg->graph);

    if (ret < 0)
        return ret;

    if (ofilter->width || ofilter->height) {
        char args[255];
        AVFilterContext *filter;
        AVDictionaryEntry *e = ((void*)0);

        snprintf(args, sizeof(args), "%d:%d",
                 ofilter->width, ofilter->height);

        while ((e = av_dict_get(ost->sws_dict, "", e,
                                AV_DICT_IGNORE_SUFFIX))) {
            av_strlcatf(args, sizeof(args), ":%s=%s", e->key, e->value);
        }

        snprintf(name, sizeof(name), "scaler_out_%d_%d",
                 ost->file_index, ost->index);
        if ((ret = avfilter_graph_create_filter(&filter, avfilter_get_by_name("scale"),
                                                name, args, ((void*)0), fg->graph)) < 0)
            return ret;
        if ((ret = avfilter_link(last_filter, pad_idx, filter, 0)) < 0)
            return ret;

        last_filter = filter;
        pad_idx = 0;
    }

    if ((pix_fmts = choose_pix_fmts(ofilter))) {
        AVFilterContext *filter;
        snprintf(name, sizeof(name), "format_out_%d_%d",
                 ost->file_index, ost->index);
        ret = avfilter_graph_create_filter(&filter,
                                           avfilter_get_by_name("format"),
                                           "format", pix_fmts, ((void*)0), fg->graph);
        av_freep(&pix_fmts);
        if (ret < 0)
            return ret;
        if ((ret = avfilter_link(last_filter, pad_idx, filter, 0)) < 0)
            return ret;

        last_filter = filter;
        pad_idx = 0;
    }

    if (ost->frame_rate.num && 0) {
        AVFilterContext *fps;
        char args[255];

        snprintf(args, sizeof(args), "fps=%d/%d", ost->frame_rate.num,
                 ost->frame_rate.den);
        snprintf(name, sizeof(name), "fps_out_%d_%d",
                 ost->file_index, ost->index);
        ret = avfilter_graph_create_filter(&fps, avfilter_get_by_name("fps"),
                                           name, args, ((void*)0), fg->graph);
        if (ret < 0)
            return ret;

        ret = avfilter_link(last_filter, pad_idx, fps, 0);
        if (ret < 0)
            return ret;
        last_filter = fps;
        pad_idx = 0;
    }

    snprintf(name, sizeof(name), "trim_out_%d_%d",
             ost->file_index, ost->index);
    ret = insert_trim(of->start_time, of->recording_time,
                      &last_filter, &pad_idx, name);
    if (ret < 0)
        return ret;


    if ((ret = avfilter_link(last_filter, pad_idx, ofilter->filter, 0)) < 0)
        return ret;

    return 0;
}

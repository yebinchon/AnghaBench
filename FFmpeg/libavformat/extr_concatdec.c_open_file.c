
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int flags; scalar_t__ start_time; int interrupt_callback; } ;
struct TYPE_18__ {int flags; int interrupt_callback; TYPE_2__* priv_data; } ;
struct TYPE_17__ {TYPE_7__* avf; scalar_t__ segment_time_metadata; TYPE_1__* files; TYPE_1__* cur_file; } ;
struct TYPE_16__ {scalar_t__ start_time; scalar_t__ duration; scalar_t__ file_start_time; scalar_t__ file_inpoint; scalar_t__ inpoint; int metadata; int url; } ;
typedef TYPE_1__ ConcatFile ;
typedef TYPE_2__ ConcatContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVFMT_FLAG_CUSTOM_IO ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_NOPTS_VALUE ;
 int ENOMEM ;
 int INT64_MIN ;
 int av_dict_set_int (int *,char*,scalar_t__,int ) ;
 int av_log (TYPE_3__*,int ,char*,int ) ;
 TYPE_7__* avformat_alloc_context () ;
 int avformat_close_input (TYPE_7__**) ;
 int avformat_find_stream_info (TYPE_7__*,int *) ;
 int avformat_open_input (TYPE_7__**,int ,int *,int *) ;
 int avformat_seek_file (TYPE_7__*,int,int ,scalar_t__,scalar_t__,int ) ;
 int ff_copy_whiteblacklists (TYPE_7__*,TYPE_3__*) ;
 scalar_t__ get_best_effort_duration (TYPE_1__*,TYPE_7__*) ;
 int match_streams (TYPE_3__*) ;

__attribute__((used)) static int open_file(AVFormatContext *avf, unsigned fileno)
{
    ConcatContext *cat = avf->priv_data;
    ConcatFile *file = &cat->files[fileno];
    int ret;

    if (cat->avf)
        avformat_close_input(&cat->avf);

    cat->avf = avformat_alloc_context();
    if (!cat->avf)
        return AVERROR(ENOMEM);

    cat->avf->flags |= avf->flags & ~AVFMT_FLAG_CUSTOM_IO;
    cat->avf->interrupt_callback = avf->interrupt_callback;

    if ((ret = ff_copy_whiteblacklists(cat->avf, avf)) < 0)
        return ret;

    if ((ret = avformat_open_input(&cat->avf, file->url, ((void*)0), ((void*)0))) < 0 ||
        (ret = avformat_find_stream_info(cat->avf, ((void*)0))) < 0) {
        av_log(avf, AV_LOG_ERROR, "Impossible to open '%s'\n", file->url);
        avformat_close_input(&cat->avf);
        return ret;
    }
    cat->cur_file = file;
    file->start_time = !fileno ? 0 :
                       cat->files[fileno - 1].start_time +
                       cat->files[fileno - 1].duration;
    file->file_start_time = (cat->avf->start_time == AV_NOPTS_VALUE) ? 0 : cat->avf->start_time;
    file->file_inpoint = (file->inpoint == AV_NOPTS_VALUE) ? file->file_start_time : file->inpoint;
    file->duration = get_best_effort_duration(file, cat->avf);

    if (cat->segment_time_metadata) {
        av_dict_set_int(&file->metadata, "lavf.concatdec.start_time", file->start_time, 0);
        if (file->duration != AV_NOPTS_VALUE)
            av_dict_set_int(&file->metadata, "lavf.concatdec.duration", file->duration, 0);
    }

    if ((ret = match_streams(avf)) < 0)
        return ret;
    if (file->inpoint != AV_NOPTS_VALUE) {
       if ((ret = avformat_seek_file(cat->avf, -1, INT64_MIN, file->inpoint, file->inpoint, 0)) < 0)
           return ret;
    }
    return 0;
}

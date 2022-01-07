
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int key; } ;
struct TYPE_15__ {int nb_streams; TYPE_1__** streams; int url; TYPE_3__* priv_data; } ;
struct TYPE_14__ {int format_options; TYPE_4__* avf; } ;
struct TYPE_13__ {int header_written; TYPE_4__* avf; } ;
struct TYPE_12__ {scalar_t__ cur_dts; } ;
typedef TYPE_2__ FifoThreadContext ;
typedef TYPE_3__ FifoContext ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_DICT_IGNORE_SUFFIX ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_dict_copy (int **,int ,int ) ;
 int av_dict_free (int **) ;
 TYPE_5__* av_dict_get (int *,char*,TYPE_5__*,int ) ;
 int av_err2str (int) ;
 int av_log (TYPE_4__*,int ,char*,int ,...) ;
 int avformat_write_header (TYPE_4__*,int **) ;
 int ff_format_output_open (TYPE_4__*,int ,int **) ;

__attribute__((used)) static int fifo_thread_write_header(FifoThreadContext *ctx)
{
    AVFormatContext *avf = ctx->avf;
    FifoContext *fifo = avf->priv_data;
    AVFormatContext *avf2 = fifo->avf;
    AVDictionary *format_options = ((void*)0);
    int ret, i;

    ret = av_dict_copy(&format_options, fifo->format_options, 0);
    if (ret < 0)
        return ret;

    ret = ff_format_output_open(avf2, avf->url, &format_options);
    if (ret < 0) {
        av_log(avf, AV_LOG_ERROR, "Error opening %s: %s\n", avf->url,
               av_err2str(ret));
        goto end;
    }

    for (i = 0;i < avf2->nb_streams; i++)
        avf2->streams[i]->cur_dts = 0;

    ret = avformat_write_header(avf2, &format_options);
    if (!ret)
        ctx->header_written = 1;


    if (format_options) {
        AVDictionaryEntry *entry = ((void*)0);
        while ((entry = av_dict_get(format_options, "", entry, AV_DICT_IGNORE_SUFFIX)))
            av_log(avf2, AV_LOG_ERROR, "Unknown option '%s'\n", entry->key);
        ret = AVERROR(EINVAL);
    }

end:
    av_dict_free(&format_options);
    return ret;
}

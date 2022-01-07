
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {scalar_t__ eof; int * cur_file; TYPE_2__* avf; } ;
typedef int ConcatFile ;
typedef TYPE_1__ ConcatContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVSEEK_FLAG_BYTE ;
 int AVSEEK_FLAG_FRAME ;
 int ENOSYS ;
 int avformat_close_input (TYPE_2__**) ;
 int real_seek (TYPE_2__*,int,int ,int ,int ,int,TYPE_2__*) ;

__attribute__((used)) static int concat_seek(AVFormatContext *avf, int stream,
                       int64_t min_ts, int64_t ts, int64_t max_ts, int flags)
{
    ConcatContext *cat = avf->priv_data;
    ConcatFile *cur_file_saved = cat->cur_file;
    AVFormatContext *cur_avf_saved = cat->avf;
    int ret;

    if (flags & (AVSEEK_FLAG_BYTE | AVSEEK_FLAG_FRAME))
        return AVERROR(ENOSYS);
    cat->avf = ((void*)0);
    if ((ret = real_seek(avf, stream, min_ts, ts, max_ts, flags, cur_avf_saved)) < 0) {
        if (cat->cur_file != cur_file_saved) {
            if (cat->avf)
                avformat_close_input(&cat->avf);
        }
        cat->avf = cur_avf_saved;
        cat->cur_file = cur_file_saved;
    } else {
        if (cat->cur_file != cur_file_saved) {
            avformat_close_input(&cur_avf_saved);
        }
        cat->eof = 0;
    }
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char* key; char* value; } ;
struct TYPE_8__ {int metadata; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ AVDictionaryEntry ;


 int AV_DICT_IGNORE_SUFFIX ;
 int AV_LOG_ERROR ;
 TYPE_2__* av_dict_get (int ,char*,TYPE_2__*,int ) ;
 int av_log (int *,int ,char*) ;
 int avformat_close_input (TYPE_1__**) ;
 int avformat_find_stream_info (TYPE_1__*,int *) ;
 int avformat_open_input (TYPE_1__**,char*,int *,int *) ;
 int printf (char*,char*,...) ;

int main (int argc, char **argv)
{
    AVFormatContext *fmt_ctx = ((void*)0);
    AVDictionaryEntry *tag = ((void*)0);
    int ret;

    if (argc != 2) {
        printf("usage: %s <input_file>\n"
               "example program to demonstrate the use of the libavformat metadata API.\n"
               "\n", argv[0]);
        return 1;
    }

    if ((ret = avformat_open_input(&fmt_ctx, argv[1], ((void*)0), ((void*)0))))
        return ret;

    if ((ret = avformat_find_stream_info(fmt_ctx, ((void*)0))) < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Cannot find stream information\n");
        return ret;
    }

    while ((tag = av_dict_get(fmt_ctx->metadata, "", tag, AV_DICT_IGNORE_SUFFIX)))
        printf("%s=%s\n", tag->key, tag->value);

    avformat_close_input(&fmt_ctx);
    return 0;
}

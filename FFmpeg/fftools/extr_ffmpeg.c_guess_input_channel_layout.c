
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int layout_name ;
struct TYPE_7__ {int channel_layout; int channels; } ;
struct TYPE_6__ {TYPE_1__* st; int file_index; int guess_layout_max; TYPE_3__* dec_ctx; } ;
struct TYPE_5__ {int index; } ;
typedef TYPE_2__ InputStream ;
typedef TYPE_3__ AVCodecContext ;


 int AV_LOG_WARNING ;
 int av_get_channel_layout_string (char*,int,int ,int ) ;
 int av_get_default_channel_layout (int ) ;
 int av_log (int *,int ,char*,int ,int ,char*) ;

int guess_input_channel_layout(InputStream *ist)
{
    AVCodecContext *dec = ist->dec_ctx;

    if (!dec->channel_layout) {
        char layout_name[256];

        if (dec->channels > ist->guess_layout_max)
            return 0;
        dec->channel_layout = av_get_default_channel_layout(dec->channels);
        if (!dec->channel_layout)
            return 0;
        av_get_channel_layout_string(layout_name, sizeof(layout_name),
                                     dec->channels, dec->channel_layout);
        av_log(((void*)0), AV_LOG_WARNING, "Guessed Channel Layout for Input Stream "
               "#%d.%d : %s\n", ist->file_index, ist->st->index, layout_name);
    }
    return 1;
}

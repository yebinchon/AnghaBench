
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {void* nb_audio_tracks; void* nb_video_tracks; } ;
typedef TYPE_1__ MvContext ;
typedef int AVStream ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int avio_skip (int *,int) ;
 int strcmp (char const*,char*) ;
 void* var_read_int (int *,int) ;
 int var_read_metadata (TYPE_2__*,char const*,int) ;

__attribute__((used)) static int parse_global_var(AVFormatContext *avctx, AVStream *st,
                            const char *name, int size)
{
    MvContext *mv = avctx->priv_data;
    AVIOContext *pb = avctx->pb;
    if (!strcmp(name, "__NUM_I_TRACKS")) {
        mv->nb_video_tracks = var_read_int(pb, size);
    } else if (!strcmp(name, "__NUM_A_TRACKS")) {
        mv->nb_audio_tracks = var_read_int(pb, size);
    } else if (!strcmp(name, "COMMENT") || !strcmp(name, "TITLE")) {
        var_read_metadata(avctx, name, size);
    } else if (!strcmp(name, "LOOP_MODE") || !strcmp(name, "NUM_LOOPS") ||
               !strcmp(name, "OPTIMIZED")) {
        avio_skip(pb, size);
    } else
        return AVERROR_INVALIDDATA;

    return 0;
}

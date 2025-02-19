
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int nb_frames; TYPE_1__* codecpar; } ;
struct TYPE_12__ {int aformat; int acompression; } ;
struct TYPE_11__ {int sample_rate; int bits_per_coded_sample; } ;
typedef TYPE_2__ MvContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int set_channels (TYPE_4__*,TYPE_3__*,int) ;
 int strcmp (char const*,char*) ;
 int var_read_int (int *,int) ;
 int var_read_metadata (TYPE_4__*,char const*,int) ;

__attribute__((used)) static int parse_audio_var(AVFormatContext *avctx, AVStream *st,
                           const char *name, int size)
{
    MvContext *mv = avctx->priv_data;
    AVIOContext *pb = avctx->pb;
    if (!strcmp(name, "__DIR_COUNT")) {
        st->nb_frames = var_read_int(pb, size);
    } else if (!strcmp(name, "AUDIO_FORMAT")) {
        mv->aformat = var_read_int(pb, size);
    } else if (!strcmp(name, "COMPRESSION")) {
        mv->acompression = var_read_int(pb, size);
    } else if (!strcmp(name, "DEFAULT_VOL")) {
        var_read_metadata(avctx, name, size);
    } else if (!strcmp(name, "NUM_CHANNELS")) {
        return set_channels(avctx, st, var_read_int(pb, size));
    } else if (!strcmp(name, "SAMPLE_RATE")) {
        st->codecpar->sample_rate = var_read_int(pb, size);
        avpriv_set_pts_info(st, 33, 1, st->codecpar->sample_rate);
    } else if (!strcmp(name, "SAMPLE_WIDTH")) {
        st->codecpar->bits_per_coded_sample = var_read_int(pb, size) * 8;
    } else
        return AVERROR_INVALIDDATA;

    return 0;
}

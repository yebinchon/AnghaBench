
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int buf ;
struct TYPE_19__ {int flag; int * str; } ;
struct TYPE_18__ {char* key; int * value; } ;
struct TYPE_17__ {TYPE_5__** streams; } ;
struct TYPE_14__ {int num; int den; } ;
struct TYPE_13__ {int num; int den; } ;
struct TYPE_16__ {int disposition; TYPE_3__ avg_frame_rate; TYPE_2__ r_frame_rate; TYPE_1__* codecpar; int metadata; } ;
struct TYPE_15__ {TYPE_6__* avf; } ;
struct TYPE_12__ {scalar_t__ codec_type; } ;
typedef TYPE_4__ NUTContext ;
typedef TYPE_5__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_6__ AVFormatContext ;
typedef TYPE_7__ AVDictionaryEntry ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_DICT_IGNORE_SUFFIX ;
 scalar_t__ add_info (int *,char*,int *) ;
 TYPE_7__* av_dict_get (int ,char*,TYPE_7__*,int ) ;
 int av_free (int *) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_open_dyn_buf (int **) ;
 int avio_write (int *,int *,int) ;
 TYPE_9__* ff_nut_dispositions ;
 int ff_put_v (int *,int) ;
 int snprintf (int *,int,char*,int,int) ;

__attribute__((used)) static int write_streaminfo(NUTContext *nut, AVIOContext *bc, int stream_id) {
    AVFormatContext *s= nut->avf;
    AVStream* st = s->streams[stream_id];
    AVDictionaryEntry *t = ((void*)0);
    AVIOContext *dyn_bc;
    uint8_t *dyn_buf=((void*)0);
    int count=0, dyn_size, i;
    int ret = avio_open_dyn_buf(&dyn_bc);
    if (ret < 0)
        return ret;

    while ((t = av_dict_get(st->metadata, "", t, AV_DICT_IGNORE_SUFFIX)))
        count += add_info(dyn_bc, t->key, t->value);
    for (i=0; ff_nut_dispositions[i].flag; ++i) {
        if (st->disposition & ff_nut_dispositions[i].flag)
            count += add_info(dyn_bc, "Disposition", ff_nut_dispositions[i].str);
    }
    if (st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
        uint8_t buf[256];
        if (st->r_frame_rate.num>0 && st->r_frame_rate.den>0)
            snprintf(buf, sizeof(buf), "%d/%d", st->r_frame_rate.num, st->r_frame_rate.den);
        else
            snprintf(buf, sizeof(buf), "%d/%d", st->avg_frame_rate.num, st->avg_frame_rate.den);
        count += add_info(dyn_bc, "r_frame_rate", buf);
    }
    dyn_size = avio_close_dyn_buf(dyn_bc, &dyn_buf);

    if (count) {
        ff_put_v(bc, stream_id + 1);
        ff_put_v(bc, 0);
        ff_put_v(bc, 0);
        ff_put_v(bc, 0);

        ff_put_v(bc, count);

        avio_write(bc, dyn_buf, dyn_size);
    }

    av_free(dyn_buf);
    return count;
}

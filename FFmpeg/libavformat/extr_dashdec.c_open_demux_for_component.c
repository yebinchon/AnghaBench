
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct representation {TYPE_1__* ctx; scalar_t__ last_seq_no; int cur_seq_no; TYPE_4__* parent; } ;
struct TYPE_14__ {int priv_data; } ;
struct TYPE_12__ {int den; int num; } ;
struct TYPE_13__ {int id; TYPE_2__ time_base; int pts_wrap_bits; int codecpar; } ;
struct TYPE_11__ {int nb_streams; TYPE_3__** streams; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int avcodec_parameters_copy (int ,int ) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int ,int ,int ) ;
 int calc_cur_seg_no (TYPE_4__*,struct representation*) ;
 scalar_t__ calc_max_seg_no (struct representation*,int ) ;
 int reopen_demux_for_component (TYPE_4__*,struct representation*) ;

__attribute__((used)) static int open_demux_for_component(AVFormatContext *s, struct representation *pls)
{
    int ret = 0;
    int i;

    pls->parent = s;
    pls->cur_seq_no = calc_cur_seg_no(s, pls);

    if (!pls->last_seq_no) {
        pls->last_seq_no = calc_max_seg_no(pls, s->priv_data);
    }

    ret = reopen_demux_for_component(s, pls);
    if (ret < 0) {
        goto fail;
    }
    for (i = 0; i < pls->ctx->nb_streams; i++) {
        AVStream *st = avformat_new_stream(s, ((void*)0));
        AVStream *ist = pls->ctx->streams[i];
        if (!st) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }
        st->id = i;
        avcodec_parameters_copy(st->codecpar, ist->codecpar);
        avpriv_set_pts_info(st, ist->pts_wrap_bits, ist->time_base.num, ist->time_base.den);
    }

    return 0;
fail:
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int nb_bsfs; int idx; int flushed_idx; int * bsfs; } ;
typedef TYPE_1__ BSFListContext ;
typedef int AVPacket ;
typedef TYPE_2__ AVBSFContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int av_bsf_receive_packet (int ,int *) ;
 int av_bsf_send_packet (int ,int *) ;
 int av_packet_unref (int *) ;
 int ff_bsf_get_packet_ref (TYPE_2__*,int *) ;

__attribute__((used)) static int bsf_list_filter(AVBSFContext *bsf, AVPacket *out)
{
    BSFListContext *lst = bsf->priv_data;
    int ret;

    if (!lst->nb_bsfs)
        return ff_bsf_get_packet_ref(bsf, out);

    while (1) {
        if (lst->idx > lst->flushed_idx) {
            ret = av_bsf_receive_packet(lst->bsfs[lst->idx-1], out);
            if (ret == AVERROR(EAGAIN)) {

                lst->idx--;
                continue;
            } else if (ret == AVERROR_EOF) {

                lst->flushed_idx = lst->idx;
                continue;
            }else if (ret < 0) {

                break;
            }
        } else {
            ret = ff_bsf_get_packet_ref(bsf, out);
            if (ret == AVERROR_EOF) {
                lst->idx = lst->flushed_idx;
            } else if (ret < 0)
                break;
        }

        if (lst->idx < lst->nb_bsfs) {
            AVPacket *pkt;
            if (ret == AVERROR_EOF && lst->idx == lst->flushed_idx) {


                pkt = ((void*)0);
            } else {
                pkt = out;
            }
            ret = av_bsf_send_packet(lst->bsfs[lst->idx], pkt);
            if (ret < 0)
                break;
            lst->idx++;
        } else {

            break;
        }
    }

    if (ret < 0)
        av_packet_unref(out);

    return ret;
}

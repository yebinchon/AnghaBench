
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int list_count; int* ref_count; scalar_t__* nb_ref_modifications; TYPE_1__** ref_modifications; int gb; } ;
struct TYPE_4__ {unsigned int op; int val; } ;
typedef TYPE_2__ H264SliceContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (void*,int ,char*,...) ;
 int get_bits1 (int *) ;
 unsigned int get_ue_golomb_31 (int *) ;
 int get_ue_golomb_long (int *) ;

int ff_h264_decode_ref_pic_list_reordering(H264SliceContext *sl, void *logctx)
{
    int list, index;

    sl->nb_ref_modifications[0] = 0;
    sl->nb_ref_modifications[1] = 0;

    for (list = 0; list < sl->list_count; list++) {
        if (!get_bits1(&sl->gb))
            continue;

        for (index = 0; ; index++) {
            unsigned int op = get_ue_golomb_31(&sl->gb);

            if (op == 3)
                break;

            if (index >= sl->ref_count[list]) {
                av_log(logctx, AV_LOG_ERROR, "reference count overflow\n");
                return AVERROR_INVALIDDATA;
            } else if (op > 2) {
                av_log(logctx, AV_LOG_ERROR,
                       "illegal modification_of_pic_nums_idc %u\n",
                       op);
                return AVERROR_INVALIDDATA;
            }
            sl->ref_modifications[list][index].val = get_ue_golomb_long(&sl->gb);
            sl->ref_modifications[list][index].op = op;
            sl->nb_ref_modifications[list]++;
        }
    }

    return 0;
}

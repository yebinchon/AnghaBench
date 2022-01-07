
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int err_recognition; } ;
struct TYPE_8__ {int type; int size; int data; } ;
struct TYPE_6__ {int nb_nals; TYPE_3__* nals; } ;
struct TYPE_7__ {TYPE_5__* avctx; TYPE_1__ pkt; } ;
typedef TYPE_2__ H264Context ;
typedef TYPE_3__ H2645NAL ;
typedef int GetBitContext ;


 int AV_EF_EXPLODE ;
 int AV_LOG_ERROR ;





 int av_log (TYPE_5__*,int ,char*) ;
 int get_ue_golomb_long (int *) ;
 int init_get_bits8 (int *,int ,int ) ;

__attribute__((used)) static int get_last_needed_nal(H264Context *h)
{
    int nals_needed = 0;
    int first_slice = 0;
    int i, ret;

    for (i = 0; i < h->pkt.nb_nals; i++) {
        H2645NAL *nal = &h->pkt.nals[i];
        GetBitContext gb;





        switch (nal->type) {
        case 128:
        case 130:
            nals_needed = i;
            break;
        case 132:
        case 131:
        case 129:
            ret = init_get_bits8(&gb, nal->data + 1, nal->size - 1);
            if (ret < 0) {
                av_log(h->avctx, AV_LOG_ERROR, "Invalid zero-sized VCL NAL unit\n");
                if (h->avctx->err_recognition & AV_EF_EXPLODE)
                    return ret;

                break;
            }
            if (!get_ue_golomb_long(&gb) ||
                !first_slice ||
                first_slice != nal->type)
                nals_needed = i;
            if (!first_slice)
                first_slice = nal->type;
        }
    }

    return nals_needed;
}

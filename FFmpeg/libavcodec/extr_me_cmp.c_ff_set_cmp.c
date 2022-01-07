
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int me_cmp_func ;
struct TYPE_3__ {int * w97; int * w53; int * nsse; int * vsse; int * vsad; int * rd; int * bit; int * quant_psnr; int * dct_max; int * dct264_sad; int * dct_sad; int * sse; int * hadamard8_diff; int * median_sad; int * sad; } ;
typedef TYPE_1__ MECmpContext ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;
 int memset (int *,int ,int) ;
 int zero_cmp ;

void ff_set_cmp(MECmpContext *c, me_cmp_func *cmp, int type)
{
    int i;

    memset(cmp, 0, sizeof(void *) * 6);

    for (i = 0; i < 6; i++) {
        switch (type & 0xFF) {
        case 135:
            cmp[i] = c->sad[i];
            break;
        case 139:
            cmp[i] = c->median_sad[i];
            break;
        case 134:
            cmp[i] = c->hadamard8_diff[i];
            break;
        case 133:
            cmp[i] = c->sse[i];
            break;
        case 142:
            cmp[i] = c->dct_sad[i];
            break;
        case 141:
            cmp[i] = c->dct264_sad[i];
            break;
        case 140:
            cmp[i] = c->dct_max[i];
            break;
        case 137:
            cmp[i] = c->quant_psnr[i];
            break;
        case 143:
            cmp[i] = c->bit[i];
            break;
        case 136:
            cmp[i] = c->rd[i];
            break;
        case 132:
            cmp[i] = c->vsad[i];
            break;
        case 131:
            cmp[i] = c->vsse[i];
            break;
        case 128:
            cmp[i] = zero_cmp;
            break;
        case 138:
            cmp[i] = c->nsse[i];
            break;
        default:
            av_log(((void*)0), AV_LOG_ERROR,
                   "internal error in cmp function selection\n");
        }
    }
}

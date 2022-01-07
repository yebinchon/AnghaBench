
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* area_q; int cno; int* bit_size; int* mb; int* next; int * save; } ;
typedef TYPE_1__ EncBlockInfo ;


 int DV100_QLEVEL_CNO (int ) ;
 int DV100_QLEVEL_QNO (int ) ;
 int * dv100_qlevels ;
 int* dv100_qstep_inv ;
 int dv100_quantize (int ,int) ;
 scalar_t__ dv_rl2vlc_size (int,int) ;

__attribute__((used)) static int dv100_actual_quantize(EncBlockInfo *b, int qlevel)
{
    int prev, k, qsinv;

    int qno = DV100_QLEVEL_QNO(dv100_qlevels[qlevel]);
    int cno = DV100_QLEVEL_CNO(dv100_qlevels[qlevel]);

    if (b->area_q[0] == qno && b->cno == cno)
        return b->bit_size[0];

    qsinv = dv100_qstep_inv[qno];


    b->area_q[0] = qno;
    b->cno = cno;


    b->bit_size[0] = 4;


    prev = 0;
    for (k = 1; k < 64; k++) {

        int ac = dv100_quantize(b->save[k], qsinv) >> cno;
        if (ac) {
            if (ac > 255)
                ac = 255;
            b->mb[k] = ac;
            b->bit_size[0] += dv_rl2vlc_size(k - prev - 1, ac);
            b->next[prev] = k;
            prev = k;
        }
    }
    b->next[prev] = k;

    return b->bit_size[0];
}

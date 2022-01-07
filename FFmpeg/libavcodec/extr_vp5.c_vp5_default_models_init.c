
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* vector_sig; int* vector_dct; int** vector_pdi; int vector_pdv; int mb_types_stats; } ;
typedef TYPE_1__ VP56Model ;
struct TYPE_5__ {TYPE_1__* modelp; } ;
typedef TYPE_2__ VP56Context ;


 int ff_vp56_def_mb_types_stats ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int,int) ;

__attribute__((used)) static void vp5_default_models_init(VP56Context *s)
{
    VP56Model *model = s->modelp;
    int i;

    for (i=0; i<2; i++) {
        model->vector_sig[i] = 0x80;
        model->vector_dct[i] = 0x80;
        model->vector_pdi[i][0] = 0x55;
        model->vector_pdi[i][1] = 0x80;
    }
    memcpy(model->mb_types_stats, ff_vp56_def_mb_types_stats, sizeof(model->mb_types_stats));
    memset(model->vector_pdv, 0x80, sizeof(model->vector_pdv));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cp_tdx; int cp_tdy; char tp_flag; int tp_on; int cblockw_init; int cblockh_init; int csty; int roi_compno; int subsampling_dx; int subsampling_dy; int irreversible; int tcp_mct; int prog_order; scalar_t__ image_offset_y0; scalar_t__ image_offset_x0; scalar_t__ cp_ty0; scalar_t__ cp_tx0; scalar_t__ tile_size_on; } ;
typedef TYPE_1__ opj_cparameters_t ;


 int OPJ_CPRL ;

__attribute__((used)) static void cinema_parameters(opj_cparameters_t *p)
{
    p->tile_size_on = 0;
    p->cp_tdx = 1;
    p->cp_tdy = 1;


    p->tp_flag = 'C';
    p->tp_on = 1;


    p->cp_tx0 = 0;
    p->cp_ty0 = 0;
    p->image_offset_x0 = 0;
    p->image_offset_y0 = 0;


    p->cblockw_init = 32;
    p->cblockh_init = 32;
    p->csty |= 0x01;


    p->prog_order = OPJ_CPRL;


    p->roi_compno = -1;


    p->subsampling_dx = 1;
    p->subsampling_dy = 1;


    p->irreversible = 1;

    p->tcp_mct = 1;
}

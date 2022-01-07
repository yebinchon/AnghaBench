
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GPU_FFT_BASE {int* peri; int* vc_unifs; int vc_code; } ;


 size_t V3D_DBCFG ;
 size_t V3D_DBQITC ;
 size_t V3D_DBQITE ;
 size_t V3D_L2CACTL ;
 size_t V3D_SLCACTL ;
 size_t V3D_SRQCS ;
 size_t V3D_SRQPC ;
 size_t V3D_SRQUA ;

unsigned gpu_fft_base_exec_direct (
    struct GPU_FFT_BASE *base,
    int num_qpus) {

    unsigned q, t;

    base->peri[V3D_DBCFG] = 0;
    base->peri[V3D_DBQITE] = 0;
    base->peri[V3D_DBQITC] = -1;

    base->peri[V3D_L2CACTL] = 1<<2;
    base->peri[V3D_SLCACTL] = -1;

    base->peri[V3D_SRQCS] = (1<<7) | (1<<8) | (1<<16);

    for (q=0; q<num_qpus; q++) {
        base->peri[V3D_SRQUA] = base->vc_unifs[q];
        base->peri[V3D_SRQPC] = base->vc_code;
    }


    for (;;) {
        if (((base->peri[V3D_SRQCS]>>16) & 0xff) == num_qpus) break;
    }

    return 0;
}

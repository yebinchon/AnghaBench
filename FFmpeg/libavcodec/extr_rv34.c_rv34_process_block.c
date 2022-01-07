
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int16_t ;
struct TYPE_7__ {int gb; scalar_t__** block; } ;
struct TYPE_5__ {int (* rv34_idct_dc_add ) (int *,int,scalar_t__) ;int (* rv34_idct_add ) (int *,int,scalar_t__*) ;} ;
struct TYPE_6__ {TYPE_1__ rdsp; int cur_vlcs; TYPE_3__ s; } ;
typedef TYPE_2__ RV34DecContext ;
typedef TYPE_3__ MpegEncContext ;


 int rv34_decode_block (scalar_t__*,int *,int ,int,int,int,int,int) ;
 int stub1 (int *,int,scalar_t__*) ;
 int stub2 (int *,int,scalar_t__) ;

__attribute__((used)) static inline void rv34_process_block(RV34DecContext *r,
                                      uint8_t *pdst, int stride,
                                      int fc, int sc, int q_dc, int q_ac)
{
    MpegEncContext *s = &r->s;
    int16_t *ptr = s->block[0];
    int has_ac = rv34_decode_block(ptr, &s->gb, r->cur_vlcs,
                                   fc, sc, q_dc, q_ac, q_ac);
    if(has_ac){
        r->rdsp.rv34_idct_add(pdst, stride, ptr);
    }else{
        r->rdsp.rv34_idct_dc_add(pdst, stride, ptr[0]);
        ptr[0] = 0;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* qmat; int c; } ;
typedef TYPE_2__ VP8Context ;
typedef int VP56RangeCoder ;
struct TYPE_4__ {void** chroma_qmul; int * luma_dc_qmul; void** luma_qmul; } ;


 void* FFMIN (void*,int) ;
 int * vp7_y2ac_qlookup ;
 int * vp7_y2dc_qlookup ;
 void** vp7_yac_qlookup ;
 void** vp7_ydc_qlookup ;
 scalar_t__ vp8_rac_get (int *) ;
 int vp8_rac_get_uint (int *,int) ;

__attribute__((used)) static void vp7_get_quants(VP8Context *s)
{
    VP56RangeCoder *c = &s->c;

    int yac_qi = vp8_rac_get_uint(c, 7);
    int ydc_qi = vp8_rac_get(c) ? vp8_rac_get_uint(c, 7) : yac_qi;
    int y2dc_qi = vp8_rac_get(c) ? vp8_rac_get_uint(c, 7) : yac_qi;
    int y2ac_qi = vp8_rac_get(c) ? vp8_rac_get_uint(c, 7) : yac_qi;
    int uvdc_qi = vp8_rac_get(c) ? vp8_rac_get_uint(c, 7) : yac_qi;
    int uvac_qi = vp8_rac_get(c) ? vp8_rac_get_uint(c, 7) : yac_qi;

    s->qmat[0].luma_qmul[0] = vp7_ydc_qlookup[ydc_qi];
    s->qmat[0].luma_qmul[1] = vp7_yac_qlookup[yac_qi];
    s->qmat[0].luma_dc_qmul[0] = vp7_y2dc_qlookup[y2dc_qi];
    s->qmat[0].luma_dc_qmul[1] = vp7_y2ac_qlookup[y2ac_qi];
    s->qmat[0].chroma_qmul[0] = FFMIN(vp7_ydc_qlookup[uvdc_qi], 132);
    s->qmat[0].chroma_qmul[1] = vp7_yac_qlookup[uvac_qi];
}

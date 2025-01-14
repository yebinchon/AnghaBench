
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int avg_chroma_pixels_tab; int put_chroma_pixels_tab; int avg_pixels_tab; int put_pixels_tab; } ;
struct TYPE_7__ {int b8_stride; } ;
struct TYPE_9__ {int weight1; TYPE_2__ rdsp; int rv30; TYPE_1__ s; } ;
typedef TYPE_3__ RV34DecContext ;


 int RV34_MB_P_8x8 ;
 int rv34_mc (TYPE_3__*,int ,int,int,int,int,int,int,int ,int,int ,int ) ;
 int rv4_weight (TYPE_3__*) ;

__attribute__((used)) static void rv34_mc_2mv_skip(RV34DecContext *r)
{
    int i, j;
    int weighted = !r->rv30 && r->weight1 != 8192;

    for(j = 0; j < 2; j++)
        for(i = 0; i < 2; i++){
             rv34_mc(r, RV34_MB_P_8x8, i*8, j*8, i+j*r->s.b8_stride, 1, 1, 0, r->rv30,
                     weighted,
                     r->rdsp.put_pixels_tab,
                     r->rdsp.put_chroma_pixels_tab);
             rv34_mc(r, RV34_MB_P_8x8, i*8, j*8, i+j*r->s.b8_stride, 1, 1, 1, r->rv30,
                     weighted,
                     weighted ? r->rdsp.put_pixels_tab : r->rdsp.avg_pixels_tab,
                     weighted ? r->rdsp.put_chroma_pixels_tab : r->rdsp.avg_chroma_pixels_tab);
        }
    if(weighted)
        rv4_weight(r);
}

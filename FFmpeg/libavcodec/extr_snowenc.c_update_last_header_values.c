
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hcoeff; int last_hcoeff; int htaps; int last_htaps; int diag_mc; int last_diag_mc; } ;
struct TYPE_4__ {int spatial_decomposition_count; int last_spatial_decomposition_count; int block_max_depth; int last_block_max_depth; int mv_scale; int last_mv_scale; int qbias; int last_qbias; int qlog; int last_qlog; int spatial_decomposition_type; int last_spatial_decomposition_type; TYPE_2__* plane; int keyframe; } ;
typedef TYPE_1__ SnowContext ;
typedef TYPE_2__ Plane ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void update_last_header_values(SnowContext *s){
    int plane_index;

    if(!s->keyframe){
        for(plane_index=0; plane_index<2; plane_index++){
            Plane *p= &s->plane[plane_index];
            p->last_diag_mc= p->diag_mc;
            p->last_htaps = p->htaps;
            memcpy(p->last_hcoeff, p->hcoeff, sizeof(p->hcoeff));
        }
    }

    s->last_spatial_decomposition_type = s->spatial_decomposition_type;
    s->last_qlog = s->qlog;
    s->last_qbias = s->qbias;
    s->last_mv_scale = s->mv_scale;
    s->last_block_max_depth = s->block_max_depth;
    s->last_spatial_decomposition_count = s->spatial_decomposition_count;
}

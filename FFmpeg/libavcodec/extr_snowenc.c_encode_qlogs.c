
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int spatial_decomposition_count; TYPE_2__* plane; int header_state; int c; int nb_planes; } ;
struct TYPE_6__ {TYPE_1__** band; } ;
struct TYPE_5__ {int qlog; } ;
typedef TYPE_3__ SnowContext ;


 int FFMIN (int ,int) ;
 int put_symbol (int *,int ,int ,int) ;

__attribute__((used)) static void encode_qlogs(SnowContext *s){
    int plane_index, level, orientation;

    for(plane_index=0; plane_index<FFMIN(s->nb_planes, 2); plane_index++){
        for(level=0; level<s->spatial_decomposition_count; level++){
            for(orientation=level ? 1:0; orientation<4; orientation++){
                if(orientation==2) continue;
                put_symbol(&s->c, s->header_state, s->plane[plane_index].band[level][orientation].qlog, 1);
            }
        }
    }
}

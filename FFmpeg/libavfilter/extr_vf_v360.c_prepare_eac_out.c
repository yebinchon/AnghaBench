
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** out_cubemap_face_rotation; int * out_cubemap_direction_order; } ;
typedef TYPE_1__ V360Context ;
struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ AVFilterContext ;


 int BACK ;
 size_t BOTTOM_LEFT ;
 size_t BOTTOM_MIDDLE ;
 size_t BOTTOM_RIGHT ;
 int DOWN ;
 int FRONT ;
 int LEFT ;
 int RIGHT ;
 void* ROT_0 ;
 void* ROT_270 ;
 void* ROT_90 ;
 size_t TOP_LEFT ;
 size_t TOP_MIDDLE ;
 size_t TOP_RIGHT ;
 int UP ;

__attribute__((used)) static int prepare_eac_out(AVFilterContext *ctx)
{
    V360Context *s = ctx->priv;

    s->out_cubemap_direction_order[TOP_LEFT] = LEFT;
    s->out_cubemap_direction_order[TOP_MIDDLE] = FRONT;
    s->out_cubemap_direction_order[TOP_RIGHT] = RIGHT;
    s->out_cubemap_direction_order[BOTTOM_LEFT] = DOWN;
    s->out_cubemap_direction_order[BOTTOM_MIDDLE] = BACK;
    s->out_cubemap_direction_order[BOTTOM_RIGHT] = UP;

    s->out_cubemap_face_rotation[TOP_LEFT] = ROT_0;
    s->out_cubemap_face_rotation[TOP_MIDDLE] = ROT_0;
    s->out_cubemap_face_rotation[TOP_RIGHT] = ROT_0;
    s->out_cubemap_face_rotation[BOTTOM_LEFT] = ROT_270;
    s->out_cubemap_face_rotation[BOTTOM_MIDDLE] = ROT_90;
    s->out_cubemap_face_rotation[BOTTOM_RIGHT] = ROT_270;

    return 0;
}

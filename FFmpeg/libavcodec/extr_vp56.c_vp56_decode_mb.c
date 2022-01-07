
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VP56mb ;
struct TYPE_8__ {int (* parse_coeff ) (TYPE_2__*) ;TYPE_1__** frames; } ;
typedef TYPE_2__ VP56Context ;
struct TYPE_7__ {scalar_t__ key_frame; } ;


 size_t VP56_FRAME_CURRENT ;
 int VP56_MB_INTRA ;
 int stub1 (TYPE_2__*) ;
 int vp56_decode_mv (TYPE_2__*,int,int) ;
 int vp56_render_mb (TYPE_2__*,int,int,int,int ) ;

__attribute__((used)) static int vp56_decode_mb(VP56Context *s, int row, int col, int is_alpha)
{
    VP56mb mb_type;
    int ret;

    if (s->frames[VP56_FRAME_CURRENT]->key_frame)
        mb_type = VP56_MB_INTRA;
    else
        mb_type = vp56_decode_mv(s, row, col);

    ret = s->parse_coeff(s);
    if (ret < 0)
        return ret;

    vp56_render_mb(s, row, col, is_alpha, mb_type);

    return 0;
}

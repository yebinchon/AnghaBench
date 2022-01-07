
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__** vp4_mv_vlc; } ;
typedef TYPE_2__ Vp3DecodeContext ;
struct TYPE_4__ {int table; } ;
typedef int GetBitContext ;


 size_t FFABS (int) ;
 int get_vlc2 (int *,int ,int,int) ;
 size_t* vp4_mv_table_selector ;

__attribute__((used)) static int vp4_get_mv(Vp3DecodeContext *s, GetBitContext *gb, int axis, int last_motion)
{
    int v = get_vlc2(gb, s->vp4_mv_vlc[axis][vp4_mv_table_selector[FFABS(last_motion)]].table, 6, 2) - 31;
    return last_motion < 0 ? -v : v;
}

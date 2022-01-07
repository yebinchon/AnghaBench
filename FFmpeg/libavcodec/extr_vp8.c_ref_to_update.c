
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c; } ;
typedef TYPE_1__ VP8Context ;
typedef int VP56RangeCoder ;
typedef int VP56Frame ;


 int VP56_FRAME_CURRENT ;
 int VP56_FRAME_GOLDEN ;
 int VP56_FRAME_GOLDEN2 ;
 int VP56_FRAME_NONE ;
 int VP56_FRAME_PREVIOUS ;
 int vp8_rac_get_uint (int *,int) ;

__attribute__((used)) static VP56Frame ref_to_update(VP8Context *s, int update, VP56Frame ref)
{
    VP56RangeCoder *c = &s->c;

    if (update)
        return VP56_FRAME_CURRENT;

    switch (vp8_rac_get_uint(c, 2)) {
    case 1:
        return VP56_FRAME_PREVIOUS;
    case 2:
        return (ref == VP56_FRAME_GOLDEN) ? VP56_FRAME_GOLDEN2 : VP56_FRAME_GOLDEN;
    }
    return VP56_FRAME_NONE;
}

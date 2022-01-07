
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int gb; scalar_t__ mspel; } ;
struct TYPE_5__ {int hshift; TYPE_2__ s; } ;
typedef TYPE_1__ Wmv2Context ;
typedef TYPE_2__ MpegEncContext ;


 int ff_msmpeg4_decode_motion (TYPE_2__* const,int*,int*) ;
 int get_bits1 (int *) ;

__attribute__((used)) static inline int wmv2_decode_motion(Wmv2Context *w, int *mx_ptr, int *my_ptr)
{
    MpegEncContext *const s = &w->s;
    int ret;

    ret = ff_msmpeg4_decode_motion(s, mx_ptr, my_ptr);

    if (ret < 0)
        return ret;

    if ((((*mx_ptr) | (*my_ptr)) & 1) && s->mspel)
        w->hshift = get_bits1(&s->gb);
    else
        w->hshift = 0;

    return 0;
}

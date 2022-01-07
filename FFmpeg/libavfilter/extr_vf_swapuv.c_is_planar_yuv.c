
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; int nb_components; TYPE_1__* comp; } ;
struct TYPE_4__ {scalar_t__ depth; scalar_t__ offset; scalar_t__ shift; int plane; } ;
typedef TYPE_2__ AVPixFmtDescriptor ;


 int AV_PIX_FMT_FLAG_ALPHA ;
 int AV_PIX_FMT_FLAG_BE ;
 int AV_PIX_FMT_FLAG_PLANAR ;

__attribute__((used)) static int is_planar_yuv(const AVPixFmtDescriptor *desc)
{
    int i;

    if (desc->flags & ~(AV_PIX_FMT_FLAG_BE | AV_PIX_FMT_FLAG_PLANAR | AV_PIX_FMT_FLAG_ALPHA) ||
        desc->nb_components < 3 ||
        (desc->comp[1].depth != desc->comp[2].depth))
        return 0;
    for (i = 0; i < desc->nb_components; i++) {
        if (desc->comp[i].offset != 0 ||
            desc->comp[i].shift != 0 ||
            desc->comp[i].plane != i)
            return 0;
    }

    return 1;
}

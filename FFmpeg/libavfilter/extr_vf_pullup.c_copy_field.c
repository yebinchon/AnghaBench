
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int ** planes; } ;
struct TYPE_6__ {int nb_planes; int* planewidth; int* planeheight; } ;
typedef TYPE_1__ PullupContext ;
typedef TYPE_2__ PullupBuffer ;


 int av_image_copy_plane (int *,int,int *,int,int,int) ;

__attribute__((used)) static void copy_field(PullupContext *s,
                       PullupBuffer *dst, PullupBuffer *src, int parity)
{
    uint8_t *dd, *ss;
    int i;

    for (i = 0; i < s->nb_planes; i++) {
        ss = src->planes[i] + parity * s->planewidth[i];
        dd = dst->planes[i] + parity * s->planewidth[i];

        av_image_copy_plane(dd, s->planewidth[i] << 1,
                            ss, s->planewidth[i] << 1,
                            s->planewidth[i], s->planeheight[i] >> 1);
    }
}

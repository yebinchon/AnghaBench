
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int* linesize; scalar_t__* data; } ;
struct TYPE_10__ {int bpc; } ;
typedef TYPE_1__ FieldMatchContext ;
typedef TYPE_2__ AVFrame ;


 int av_image_copy_plane (scalar_t__,int,scalar_t__,int,int,int const) ;
 int get_height (TYPE_1__ const*,TYPE_2__ const*,int) ;
 int get_width (TYPE_1__ const*,TYPE_2__ const*,int) ;

__attribute__((used)) static void copy_fields(const FieldMatchContext *fm, AVFrame *dst,
                        const AVFrame *src, int field)
{
    int plane;
    for (plane = 0; plane < 4 && src->data[plane] && src->linesize[plane]; plane++) {
        const int plane_h = get_height(fm, src, plane);
        const int nb_copy_fields = (plane_h >> 1) + (field ? 0 : (plane_h & 1));
        av_image_copy_plane(dst->data[plane] + field*dst->linesize[plane], dst->linesize[plane] << 1,
                            src->data[plane] + field*src->linesize[plane], src->linesize[plane] << 1,
                            get_width(fm, src, plane) * fm->bpc, nb_copy_fields);
    }
}

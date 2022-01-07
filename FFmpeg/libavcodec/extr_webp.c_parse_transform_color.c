
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* image; int height; int width; } ;
typedef TYPE_2__ WebPContext ;
struct TYPE_5__ {int size_reduction; } ;


 size_t IMAGE_ROLE_COLOR_TRANSFORM ;
 int PARSE_BLOCK_SIZE (int ,int ) ;
 int decode_entropy_coded_image (TYPE_2__*,size_t,int,int) ;

__attribute__((used)) static int parse_transform_color(WebPContext *s)
{
    int block_bits, blocks_w, blocks_h, ret;

    PARSE_BLOCK_SIZE(s->width, s->height);

    ret = decode_entropy_coded_image(s, IMAGE_ROLE_COLOR_TRANSFORM, blocks_w,
                                     blocks_h);
    if (ret < 0)
        return ret;

    s->image[IMAGE_ROLE_COLOR_TRANSFORM].size_reduction = block_bits;

    return 0;
}

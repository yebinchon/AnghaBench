
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int width; int reduced_width; int nb_huffman_groups; TYPE_2__* image; int height; } ;
typedef TYPE_1__ WebPContext ;
struct TYPE_8__ {int height; int width; } ;
struct TYPE_7__ {int size_reduction; TYPE_5__* frame; } ;
typedef TYPE_2__ ImageContext ;


 int FFMAX (int,int) ;
 int GET_PIXEL_COMP (TYPE_5__*,int,int,int) ;
 size_t IMAGE_ROLE_ENTROPY ;
 int PARSE_BLOCK_SIZE (int,int ) ;
 int decode_entropy_coded_image (TYPE_1__*,size_t,int,int) ;

__attribute__((used)) static int decode_entropy_image(WebPContext *s)
{
    ImageContext *img;
    int ret, block_bits, width, blocks_w, blocks_h, x, y, max;

    width = s->width;
    if (s->reduced_width > 0)
        width = s->reduced_width;

    PARSE_BLOCK_SIZE(width, s->height);

    ret = decode_entropy_coded_image(s, IMAGE_ROLE_ENTROPY, blocks_w, blocks_h);
    if (ret < 0)
        return ret;

    img = &s->image[IMAGE_ROLE_ENTROPY];
    img->size_reduction = block_bits;



    max = 0;
    for (y = 0; y < img->frame->height; y++) {
        for (x = 0; x < img->frame->width; x++) {
            int p0 = GET_PIXEL_COMP(img->frame, x, y, 1);
            int p1 = GET_PIXEL_COMP(img->frame, x, y, 2);
            int p = p0 << 8 | p1;
            max = FFMAX(max, p);
        }
    }
    s->nb_huffman_groups = max + 1;

    return 0;
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int width; int reduced_width; int nb_huffman_groups; TYPE_2__* image; int /*<<< orphan*/  height; } ;
typedef  TYPE_1__ WebPContext ;
struct TYPE_8__ {int height; int width; } ;
struct TYPE_7__ {int size_reduction; TYPE_5__* frame; } ;
typedef  TYPE_2__ ImageContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (TYPE_5__*,int,int,int) ; 
 size_t IMAGE_ROLE_ENTROPY ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,size_t,int,int) ; 

__attribute__((used)) static int FUNC4(WebPContext *s)
{
    ImageContext *img;
    int ret, block_bits, width, blocks_w, blocks_h, x, y, max;

    width = s->width;
    if (s->reduced_width > 0)
        width = s->reduced_width;

    FUNC2(width, s->height);

    ret = FUNC3(s, IMAGE_ROLE_ENTROPY, blocks_w, blocks_h);
    if (ret < 0)
        return ret;

    img = &s->image[IMAGE_ROLE_ENTROPY];
    img->size_reduction = block_bits;

    /* the number of huffman groups is determined by the maximum group number
     * coded in the entropy image */
    max = 0;
    for (y = 0; y < img->frame->height; y++) {
        for (x = 0; x < img->frame->width; x++) {
            int p0 = FUNC1(img->frame, x, y, 1);
            int p1 = FUNC1(img->frame, x, y, 2);
            int p  = p0 << 8 | p1;
            max = FUNC0(max, p);
        }
    }
    s->nb_huffman_groups = max + 1;

    return 0;
}
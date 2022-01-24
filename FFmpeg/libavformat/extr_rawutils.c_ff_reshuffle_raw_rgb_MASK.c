#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_11__ {int bits_per_coded_sample; int width; int height; } ;
struct TYPE_10__ {int size; scalar_t__ data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_2__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 () ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 

int FUNC8(AVFormatContext *s, AVPacket **ppkt, AVCodecParameters *par, int expected_stride)
{
    int ret;
    AVPacket *pkt = *ppkt;
    int64_t bpc = par->bits_per_coded_sample != 15 ? par->bits_per_coded_sample : 16;
    int min_stride = (par->width * bpc + 7) >> 3;
    int with_pal_size = min_stride * par->height + 1024;
    int contains_pal = bpc == 8 && pkt->size == with_pal_size;
    int size = contains_pal ? min_stride * par->height : pkt->size;
    int stride = size / par->height;
    int padding = expected_stride - FUNC1(expected_stride, stride);
    int y;
    AVPacket *new_pkt;

    if (pkt->size == expected_stride * par->height)
        return 0;
    if (size != stride * par->height)
        return 0;

    new_pkt = FUNC3();
    if (!new_pkt)
        return FUNC0(ENOMEM);

    ret = FUNC2(new_pkt, expected_stride * par->height);
    if (ret < 0)
        goto fail;

    ret = FUNC4(new_pkt, pkt);
    if (ret < 0)
        goto fail;

    for (y = 0; y<par->height; y++) {
        FUNC6(new_pkt->data + y*expected_stride, pkt->data + y*stride, FUNC1(expected_stride, stride));
        FUNC7(new_pkt->data + y*expected_stride + expected_stride - padding, 0, padding);
    }

    *ppkt = new_pkt;
    return 1 + contains_pal;
fail:
    FUNC5(&new_pkt);

    return ret;
}
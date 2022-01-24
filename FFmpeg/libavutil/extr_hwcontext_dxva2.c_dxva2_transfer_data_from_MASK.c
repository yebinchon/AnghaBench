#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_12__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ data; int /*<<< orphan*/ * linesize; scalar_t__ format; } ;
struct TYPE_11__ {scalar_t__ sw_format; } ;
typedef  TYPE_1__ AVHWFramesContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_HWFRAME_MAP_READ ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*,TYPE_2__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVHWFramesContext *ctx, AVFrame *dst,
                                    const AVFrame *src)
{
    AVFrame *map;
    ptrdiff_t src_linesize[4], dst_linesize[4];
    int ret, i;

    if (dst->format != ctx->sw_format)
        return FUNC0(ENOSYS);

    map = FUNC1();
    if (!map)
        return FUNC0(ENOMEM);
    map->format = dst->format;

    ret = FUNC4(ctx, map, src, AV_HWFRAME_MAP_READ);
    if (ret < 0)
        goto fail;

    for (i = 0; i < 4; i++) {
        dst_linesize[i] = dst->linesize[i];
        src_linesize[i] = map->linesize[i];
    }
    FUNC3(dst->data, dst_linesize, (const uint8_t **)map->data, src_linesize,
                          ctx->sw_format, src->width, src->height);
fail:
    FUNC2(&map);
    return ret;
}
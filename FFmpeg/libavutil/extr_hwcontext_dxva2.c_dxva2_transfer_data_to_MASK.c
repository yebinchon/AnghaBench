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
struct TYPE_12__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  linesize; scalar_t__ data; int /*<<< orphan*/  format; } ;
struct TYPE_11__ {int /*<<< orphan*/  sw_format; } ;
typedef  TYPE_1__ AVHWFramesContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_HWFRAME_MAP_OVERWRITE ; 
 int AV_HWFRAME_MAP_WRITE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC5(AVHWFramesContext *ctx, AVFrame *dst,
                                  const AVFrame *src)
{
    AVFrame *map;
    int ret;

    if (src->format != ctx->sw_format)
        return FUNC0(ENOSYS);

    map = FUNC1();
    if (!map)
        return FUNC0(ENOMEM);
    map->format = dst->format;

    ret = FUNC4(ctx, map, dst, AV_HWFRAME_MAP_WRITE | AV_HWFRAME_MAP_OVERWRITE);
    if (ret < 0)
        goto fail;

    FUNC3(map->data, map->linesize, (const uint8_t **)src->data, src->linesize,
                  ctx->sw_format, src->width, src->height);

fail:
    FUNC2(&map);
    return ret;
}
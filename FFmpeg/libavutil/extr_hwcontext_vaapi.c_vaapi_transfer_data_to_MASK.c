#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  format; } ;
struct TYPE_13__ {scalar_t__ width; scalar_t__ height; } ;
typedef  TYPE_1__ AVHWFramesContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_HWFRAME_MAP_OVERWRITE ; 
 int AV_HWFRAME_MAP_WRITE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC1 () ; 
 int FUNC2 (TYPE_2__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC5(AVHWFramesContext *hwfc,
                                  AVFrame *dst, const AVFrame *src)
{
    AVFrame *map;
    int err;

    if (src->width > hwfc->width || src->height > hwfc->height)
        return FUNC0(EINVAL);

    map = FUNC1();
    if (!map)
        return FUNC0(ENOMEM);
    map->format = src->format;

    err = FUNC4(hwfc, map, dst, AV_HWFRAME_MAP_WRITE | AV_HWFRAME_MAP_OVERWRITE);
    if (err)
        goto fail;

    map->width  = src->width;
    map->height = src->height;

    err = FUNC2(map, src);
    if (err)
        goto fail;

    err = 0;
fail:
    FUNC3(&map);
    return err;
}
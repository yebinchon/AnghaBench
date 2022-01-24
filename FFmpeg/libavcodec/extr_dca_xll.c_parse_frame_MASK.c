#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int frame_size; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ DCAXllDecoder ;
typedef  int /*<<< orphan*/  DCAExssAsset ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(DCAXllDecoder *s, uint8_t *data, int size, DCAExssAsset *asset)
{
    int ret;

    if ((ret = FUNC2(&s->gb, data, size)) < 0)
        return ret;
    if ((ret = FUNC4(s)) < 0)
        return ret;
    if ((ret = FUNC6(s, asset)) < 0)
        return ret;
    if ((ret = FUNC5(s)) < 0)
        return ret;
    if ((ret = FUNC3(s)) < 0)
        return ret;
    if (FUNC1(&s->gb, s->frame_size * 8)) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Read past end of XLL frame\n");
        return AVERROR_INVALIDDATA;
    }
    return ret;
}
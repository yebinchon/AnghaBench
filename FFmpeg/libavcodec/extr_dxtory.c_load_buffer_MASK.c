#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx,
                       const uint8_t *src, int src_size,
                       GetByteContext *gb,
                       int *nslices, int *off)
{
    FUNC4(gb, src, src_size);
    *nslices = FUNC3(gb);
    *off = FUNC0(*nslices * 4 + 2, 16);
    if (src_size < *off) {
        FUNC1(avctx, AV_LOG_ERROR, "no slice data\n");
        return AVERROR_INVALIDDATA;
    }

    if (!*nslices) {
        FUNC2(avctx, "%d slices for %dx%d", *nslices,
                              avctx->width, avctx->height);
        return AVERROR_PATCHWELCOME;
    }

    return 0;
}
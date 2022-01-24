#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  picture_hash; } ;
typedef  TYPE_1__ HEVCSEI ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
#define  HEVC_SEI_TYPE_DECODED_PICTURE_HASH 128 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(GetBitContext *gb, void *logctx, HEVCSEI *s,
                                 int type, int size)
{
    switch (type) {
    case HEVC_SEI_TYPE_DECODED_PICTURE_HASH:
        return FUNC1(&s->picture_hash, gb);
    default:
        FUNC0(logctx, AV_LOG_DEBUG, "Skipped SUFFIX SEI %d\n", type);
        FUNC2(gb, 8 * size);
        return 0;
    }
}
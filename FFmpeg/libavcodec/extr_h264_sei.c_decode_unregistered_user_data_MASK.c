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
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {int x264_build; } ;
typedef  TYPE_1__ H264SEIUnregistered ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (scalar_t__*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char*,int) ; 

__attribute__((used)) static int FUNC6(H264SEIUnregistered *h, GetBitContext *gb,
                                         void *logctx, int size)
{
    uint8_t *user_data;
    int e, build, i;

    if (size < 16 || size >= INT_MAX - 16)
        return AVERROR_INVALIDDATA;

    user_data = FUNC2(16 + size + 1);
    if (!user_data)
        return FUNC0(ENOMEM);

    for (i = 0; i < size + 16; i++)
        user_data[i] = FUNC3(gb, 8);

    user_data[i] = 0;
    e = FUNC4(user_data + 16, "x264 - core %d", &build);
    if (e == 1 && build > 0)
        h->x264_build = build;
    if (e == 1 && build == 1 && !FUNC5(user_data+16, "x264 - core 0000", 16))
        h->x264_build = 67;

    FUNC1(user_data);
    return 0;
}
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
struct TYPE_3__ {int /*<<< orphan*/  g; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ Jpeg2000DecoderContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(Jpeg2000DecoderContext *s, int n)
{
    int i;
    int v;

    FUNC0(s->avctx, AV_LOG_DEBUG,
            "PLT marker at pos 0x%X\n", FUNC2(&s->g) - 4);

    if (n < 4)
        return AVERROR_INVALIDDATA;

    /*Zplt =*/ FUNC1(&s->g);

    for (i = 0; i < n - 3; i++) {
        v = FUNC1(&s->g);
    }
    if (v & 0x80)
        return AVERROR_INVALIDDATA;

    return 0;
}
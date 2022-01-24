#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int version; int alpha; int chroma; int /*<<< orphan*/ * len; int /*<<< orphan*/  vlc_n; int /*<<< orphan*/ * bits; int /*<<< orphan*/ * stats; } ;
typedef  TYPE_1__ HYuvContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(HYuvContext *s, uint8_t *buf)
{
    int i, ret;
    int size = 0;
    int count = 3;

    if (s->version > 2)
        count = 1 + s->alpha + 2*s->chroma;

    for (i = 0; i < count; i++) {
        if ((ret = FUNC0(s->len[i], s->stats[i], s->vlc_n, 0)) < 0)
            return ret;

        if (FUNC1(s->bits[i], s->len[i], s->vlc_n) < 0) {
            return -1;
        }

        size += FUNC2(s, s->len[i], buf + size);
    }
    return size;
}
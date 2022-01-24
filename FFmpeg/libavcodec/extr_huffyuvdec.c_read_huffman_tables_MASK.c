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
struct TYPE_4__ {int version; int alpha; int chroma; int /*<<< orphan*/ * bits; int /*<<< orphan*/ * len; int /*<<< orphan*/  vlc_n; int /*<<< orphan*/ * vlc; } ;
typedef  TYPE_1__ HYuvContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(HYuvContext *s, const uint8_t *src, int length)
{
    GetBitContext gb;
    int i, ret;
    int count = 3;

    if ((ret = FUNC4(&gb, src, length * 8)) < 0)
        return ret;

    if (s->version > 2)
        count = 1 + s->alpha + 2*s->chroma;

    for (i = 0; i < count; i++) {
        if ((ret = FUNC6(s->len[i], &gb, s->vlc_n)) < 0)
            return ret;
        if ((ret = FUNC1(s->bits[i], s->len[i], s->vlc_n)) < 0)
            return ret;
        FUNC0(&s->vlc[i]);
        if ((ret = FUNC5(&s->vlc[i], VLC_BITS, s->vlc_n, s->len[i], 1, 1,
                           s->bits[i], 4, 4, 0)) < 0)
            return ret;
    }

    if ((ret = FUNC2(s)) < 0)
        return ret;

    return (FUNC3(&gb) + 7) / 8;
}
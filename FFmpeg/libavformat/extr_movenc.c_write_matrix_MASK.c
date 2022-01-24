#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int int16_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(AVIOContext *pb, int16_t a, int16_t b, int16_t c,
                         int16_t d, int16_t tx, int16_t ty)
{
    FUNC0(pb, a << 16);  /* 16.16 format */
    FUNC0(pb, b << 16);  /* 16.16 format */
    FUNC0(pb, 0);        /* u in 2.30 format */
    FUNC0(pb, c << 16);  /* 16.16 format */
    FUNC0(pb, d << 16);  /* 16.16 format */
    FUNC0(pb, 0);        /* v in 2.30 format */
    FUNC0(pb, tx << 16); /* 16.16 format */
    FUNC0(pb, ty << 16); /* 16.16 format */
    FUNC0(pb, 1 << 30);  /* w in 2.30 format */
}
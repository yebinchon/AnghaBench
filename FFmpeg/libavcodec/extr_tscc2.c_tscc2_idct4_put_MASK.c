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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  COL_OP ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  ROW_OP ; 

__attribute__((used)) static void FUNC2(int *in, int q[3], uint8_t *dst, int stride)
{
    int i;
    int tblk[4 * 4];
    int t0, t1, t2, t3;

    for (i = 0; i < 4; i++) {
        t0 = FUNC1(q[0 + (i & 1)], in[0 * 4 + i]);
        t1 = FUNC1(q[1 + (i & 1)], in[1 * 4 + i]);
        t2 = FUNC1(q[0 + (i & 1)], in[2 * 4 + i]);
        t3 = FUNC1(q[1 + (i & 1)], in[3 * 4 + i]);
        FUNC0(tblk[0 * 4 + i], tblk[1 * 4 + i],
              tblk[2 * 4 + i], tblk[3 * 4 + i],
              t0, t1, t2, t3, COL_OP);
    }
    for (i = 0; i < 4; i++) {
        FUNC0(dst[0], dst[1], dst[2], dst[3],
              tblk[i * 4 + 0], tblk[i * 4 + 1],
              tblk[i * 4 + 2], tblk[i * 4 + 3], ROW_OP);
        dst += stride;
    }
}
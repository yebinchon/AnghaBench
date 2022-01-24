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
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const,int) ; 

__attribute__((used)) static void FUNC2(int32_t *dst, int32_t *src0, int32_t *src1,
                                  const int32_t *coeff, ptrdiff_t len)
{
    int i;

    FUNC0(src0, src1, coeff[0], len);
    FUNC0(src1, src0, coeff[1], len);
    FUNC0(src0, src1, coeff[2], len);
    FUNC0(src1, src0, coeff[3], len);

    for (i = 0; i < 8; i++, src0--) {
        FUNC1(src0, src1, coeff[i +  4], len);
        FUNC1(src1, src0, coeff[i + 12], len);
        FUNC1(src0, src1, coeff[i +  4], len);
    }

    for (i = 0; i < len; i++) {
        *dst++ = *src1++;
        *dst++ = *++src0;
    }
}
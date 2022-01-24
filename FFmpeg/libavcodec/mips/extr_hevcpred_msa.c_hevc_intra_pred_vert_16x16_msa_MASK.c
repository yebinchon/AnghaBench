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
typedef  int v8i16 ;
typedef  int /*<<< orphan*/ * v16u8 ;
typedef  int /*<<< orphan*/  v16i8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(const uint8_t *src_top,
                                           const uint8_t *src_left,
                                           uint8_t *dst, int32_t stride,
                                           int32_t flag)
{
    int32_t col;
    uint8_t *tmp_dst = dst;
    uint32_t row;
    v16u8 src;
    v8i16 vec0, vec1, vec2, vec3;

    src = FUNC2(src_top);

    for (row = 16; row--;) {
        FUNC3(src, tmp_dst);
        tmp_dst += stride;
    }

    if (0 == flag) {
        src = FUNC2(src_left);

        vec0 = FUNC6(src_left[-1]);
        vec1 = FUNC6(src_top[0]);

        FUNC5(src, vec2, vec3);
        FUNC4(vec2, vec0, vec3, vec0, vec2, vec3);

        vec2 >>= 1;
        vec3 >>= 1;

        FUNC0(vec2, vec1, vec3, vec1, vec2, vec3);
        FUNC1(vec2, vec3);

        src = (v16u8) FUNC7((v16i8) vec3, (v16i8) vec2);

        for (col = 0; col < 16; col++) {
            dst[stride * col] = src[col];
        }
    }
}
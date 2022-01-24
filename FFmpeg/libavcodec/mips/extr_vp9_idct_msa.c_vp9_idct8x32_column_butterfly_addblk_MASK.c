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
typedef  int /*<<< orphan*/  v8i16 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(int16_t *tmp_eve_buf,
                                                 int16_t *tmp_odd_buf,
                                                 uint8_t *dst,
                                                 int32_t dst_stride)
{
    v8i16 vec0, vec1, vec2, vec3, loc0, loc1, loc2, loc3;
    v8i16 m0, m1, m2, m3, m4, m5, m6, m7, n0, n1, n2, n3, n4, n5, n6, n7;

    /* FINAL BUTTERFLY : Dependency on Even & Odd */
    vec0 = FUNC1(tmp_odd_buf);
    vec1 = FUNC1(tmp_odd_buf + 9 * 8);
    vec2 = FUNC1(tmp_odd_buf + 14 * 8);
    vec3 = FUNC1(tmp_odd_buf + 6 * 8);
    loc0 = FUNC1(tmp_eve_buf);
    loc1 = FUNC1(tmp_eve_buf + 8 * 8);
    loc2 = FUNC1(tmp_eve_buf + 4 * 8);
    loc3 = FUNC1(tmp_eve_buf + 12 * 8);

    FUNC0(loc0, vec3, loc1, vec2, loc2, vec1, loc3, vec0, m0, m4, m2, m6);
    FUNC2(m0, m2, m4, m6, 6);
    FUNC4(dst, (4 * dst_stride), m0, m2, m4, m6);

    FUNC3(loc0, vec3, loc1, vec2, loc2, vec1, loc3, vec0, m6, m2, m4, m0);
    FUNC2(m0, m2, m4, m6, 6);
    FUNC4((dst + 19 * dst_stride), (4 * dst_stride),
                        m0, m2, m4, m6);

    /* Load 8 & Store 8 */
    vec0 = FUNC1(tmp_odd_buf + 4 * 8);
    vec1 = FUNC1(tmp_odd_buf + 13 * 8);
    vec2 = FUNC1(tmp_odd_buf + 10 * 8);
    vec3 = FUNC1(tmp_odd_buf + 3 * 8);
    loc0 = FUNC1(tmp_eve_buf + 2 * 8);
    loc1 = FUNC1(tmp_eve_buf + 10 * 8);
    loc2 = FUNC1(tmp_eve_buf + 6 * 8);
    loc3 = FUNC1(tmp_eve_buf + 14 * 8);

    FUNC0(loc0, vec3, loc1, vec2, loc2, vec1, loc3, vec0, m1, m5, m3, m7);
    FUNC2(m1, m3, m5, m7, 6);
    FUNC4((dst + 2 * dst_stride), (4 * dst_stride),
                        m1, m3, m5, m7);

    FUNC3(loc0, vec3, loc1, vec2, loc2, vec1, loc3, vec0, m7, m3, m5, m1);
    FUNC2(m1, m3, m5, m7, 6);
    FUNC4((dst + 17 * dst_stride), (4 * dst_stride),
                        m1, m3, m5, m7);

    /* Load 8 & Store 8 */
    vec0 = FUNC1(tmp_odd_buf + 2 * 8);
    vec1 = FUNC1(tmp_odd_buf + 11 * 8);
    vec2 = FUNC1(tmp_odd_buf + 12 * 8);
    vec3 = FUNC1(tmp_odd_buf + 7 * 8);
    loc0 = FUNC1(tmp_eve_buf + 1 * 8);
    loc1 = FUNC1(tmp_eve_buf + 9 * 8);
    loc2 = FUNC1(tmp_eve_buf + 5 * 8);
    loc3 = FUNC1(tmp_eve_buf + 13 * 8);

    FUNC0(loc0, vec3, loc1, vec2, loc2, vec1, loc3, vec0, n0, n4, n2, n6);
    FUNC2(n0, n2, n4, n6, 6);
    FUNC4((dst + 1 * dst_stride), (4 * dst_stride),
                        n0, n2, n4, n6);

    FUNC3(loc0, vec3, loc1, vec2, loc2, vec1, loc3, vec0, n6, n2, n4, n0);
    FUNC2(n0, n2, n4, n6, 6);
    FUNC4((dst + 18 * dst_stride), (4 * dst_stride),
                        n0, n2, n4, n6);

    /* Load 8 & Store 8 */
    vec0 = FUNC1(tmp_odd_buf + 5 * 8);
    vec1 = FUNC1(tmp_odd_buf + 15 * 8);
    vec2 = FUNC1(tmp_odd_buf + 8 * 8);
    vec3 = FUNC1(tmp_odd_buf + 1 * 8);
    loc0 = FUNC1(tmp_eve_buf + 3 * 8);
    loc1 = FUNC1(tmp_eve_buf + 11 * 8);
    loc2 = FUNC1(tmp_eve_buf + 7 * 8);
    loc3 = FUNC1(tmp_eve_buf + 15 * 8);

    FUNC0(loc0, vec3, loc1, vec2, loc2, vec1, loc3, vec0, n1, n5, n3, n7);
    FUNC2(n1, n3, n5, n7, 6);
    FUNC4((dst + 3 * dst_stride), (4 * dst_stride),
                        n1, n3, n5, n7);

    FUNC3(loc0, vec3, loc1, vec2, loc2, vec1, loc3, vec0, n7, n3, n5, n1);
    FUNC2(n1, n3, n5, n7, 6);
    FUNC4((dst + 16 * dst_stride), (4 * dst_stride),
                        n1, n3, n5, n7);
}
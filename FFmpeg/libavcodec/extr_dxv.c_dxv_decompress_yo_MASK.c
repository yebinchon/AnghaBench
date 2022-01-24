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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  DXVContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*,unsigned int,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC9(DXVContext *ctx, GetByteContext *gb,
                             uint8_t *tex_data, int tex_size,
                             uint8_t *op_data, int max_op_size)
{
    int op_offset = FUNC3(gb);
    unsigned op_size = FUNC3(gb);
    int data_start = FUNC6(gb);
    uint8_t *dst, *table0[256] = { 0 }, *table1[256] = { 0 };
    int ret, state = 0, skip, oi = 0, v, vv;

    if (op_offset < 8 || op_offset - 8 > FUNC2(gb))
        return AVERROR_INVALIDDATA;

    dst = tex_data;
    FUNC5(gb, op_offset - 8);
    if (op_size > max_op_size)
        return AVERROR_INVALIDDATA;
    skip = FUNC8(gb, op_data, op_size);
    if (skip < 0)
        return skip;
    FUNC4(gb, data_start, SEEK_SET);

    v = FUNC3(gb);
    FUNC1(dst, v);
    vv = FUNC3(gb);
    table0[0x9E3779B1 * (uint16_t)v >> 24] = dst;
    FUNC1(dst + 4, vv);
    table1[0x9E3779B1 * (FUNC0(dst + 2) & 0xFFFFFF) >> 24] = dst + 2;
    dst += 8;

    while (dst < tex_data + tex_size) {
        ret = FUNC7(ctx, gb, tex_data, tex_size, op_data, &oi, op_size,
                                 &dst, &state, table0, table1, 0);
        if (ret < 0)
            return ret;
    }

    FUNC4(gb, data_start + op_offset + skip - 8, SEEK_SET);

    return 0;
}
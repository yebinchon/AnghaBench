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
typedef  int int64_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC9(const uint8_t *buf, int buf_size,
                                   int64_t *obu_size, int *start_pos, int *type,
                                   int *temporal_id, int *spatial_id)
{
    GetBitContext gb;
    int ret, extension_flag, has_size_flag;
    int64_t size;

    ret = FUNC5(&gb, buf, FUNC0(buf_size, 2 + 8)); // OBU header fields + max leb128 length
    if (ret < 0)
        return ret;

    if (FUNC2(&gb) != 0) // obu_forbidden_bit
        return AVERROR_INVALIDDATA;

    *type      = FUNC1(&gb, 4);
    extension_flag = FUNC2(&gb);
    has_size_flag  = FUNC2(&gb);
    FUNC8(&gb); // obu_reserved_1bit

    if (extension_flag) {
        *temporal_id = FUNC1(&gb, 3);
        *spatial_id  = FUNC1(&gb, 2);
        FUNC7(&gb, 3); // extension_header_reserved_3bits
    } else {
        *temporal_id = *spatial_id = 0;
    }

    *obu_size  = has_size_flag ? FUNC6(&gb)
                               : buf_size - 1 - extension_flag;

    if (FUNC4(&gb) < 0)
        return AVERROR_INVALIDDATA;

    *start_pos = FUNC3(&gb) / 8;

    size = *obu_size + *start_pos;

    if (size > buf_size)
        return AVERROR_INVALIDDATA;

    return size;
}
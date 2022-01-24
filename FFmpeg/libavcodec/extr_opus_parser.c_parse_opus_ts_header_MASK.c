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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const uint8_t *FUNC5(const uint8_t *start, int *payload_len, int buf_len)
{
    const uint8_t *buf = start + 1;
    int start_trim_flag, end_trim_flag, control_extension_flag, control_extension_length;
    uint8_t flags;
    uint64_t payload_len_tmp;

    GetByteContext gb;
    FUNC1(&gb, buf, buf_len);

    flags = FUNC0(&gb);
    start_trim_flag        = (flags >> 4) & 1;
    end_trim_flag          = (flags >> 3) & 1;
    control_extension_flag = (flags >> 2) & 1;

    payload_len_tmp = *payload_len = 0;
    while (FUNC2(&gb) == 0xff)
        payload_len_tmp += FUNC0(&gb);

    payload_len_tmp += FUNC0(&gb);

    if (start_trim_flag)
        FUNC3(&gb, 2);
    if (end_trim_flag)
        FUNC3(&gb, 2);
    if (control_extension_flag) {
        control_extension_length = FUNC0(&gb);
        FUNC3(&gb, control_extension_length);
    }

    if (FUNC4(&gb) + payload_len_tmp > buf_len)
        return NULL;

    *payload_len = payload_len_tmp;

    return buf + FUNC4(&gb);
}
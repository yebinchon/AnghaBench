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
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC2(const uint8_t *data, const uint8_t *data_end,
                           const uint8_t *name, uint8_t *dst, int dst_size)
{
    GetByteContext gb;

    if (data >= data_end)
        return -1;

    FUNC1(&gb, data, data_end - data);

    return FUNC0(&gb, name, dst, dst_size);
}
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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ **,scalar_t__ const*,scalar_t__ const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__ const*) ; 

int FUNC2(const uint8_t *data, int size, AVDictionary **dict)
{
    const uint8_t *end;
    int ret = 0;

    if (!dict || !data || !size)
        return ret;
    end = data + size;
    if (size && end[-1])
        return AVERROR_INVALIDDATA;
    while (data < end) {
        const uint8_t *key = data;
        const uint8_t *val = data + FUNC1(key) + 1;

        if (val >= end || !*key)
            return AVERROR_INVALIDDATA;

        ret = FUNC0(dict, key, val, 0);
        if (ret < 0)
            break;
        data = val + FUNC1(val) + 1;
    }

    return ret;
}
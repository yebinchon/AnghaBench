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
typedef  int int64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC3(AVIOContext *pb, int *cur_byte, int64_t *result)
{
    int64_t val = 0;

    FUNC2(pb, cur_byte);
    if ((unsigned)*cur_byte - '0' > 9)
        return AVERROR_INVALIDDATA;
    while (FUNC0(*cur_byte, '0', '9')) {
        val = val * 10 + (*cur_byte - '0');
        FUNC1(pb, cur_byte);
    }
    *result = val;
    return 0;
}
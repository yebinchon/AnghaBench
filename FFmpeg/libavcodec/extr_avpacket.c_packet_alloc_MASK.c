#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ data; } ;
typedef  TYPE_1__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int INT_MAX ; 
 int FUNC1 (TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(AVBufferRef **buf, int size)
{
    int ret;
    if (size < 0 || size >= INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE)
        return FUNC0(EINVAL);

    ret = FUNC1(buf, size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (ret < 0)
        return ret;

    FUNC2((*buf)->data + size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    return 0;
}
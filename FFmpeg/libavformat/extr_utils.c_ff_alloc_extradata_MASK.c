#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int extradata_size; scalar_t__ extradata; } ;
typedef  TYPE_1__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 

int FUNC4(AVCodecParameters *par, int size)
{
    FUNC1(&par->extradata);
    par->extradata_size = 0;

    if (size < 0 || size >= INT32_MAX - AV_INPUT_BUFFER_PADDING_SIZE)
        return FUNC0(EINVAL);

    par->extradata = FUNC2(size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!par->extradata)
        return FUNC0(ENOMEM);

    FUNC3(par->extradata + size, 0, AV_INPUT_BUFFER_PADDING_SIZE);
    par->extradata_size = size;

    return 0;
}
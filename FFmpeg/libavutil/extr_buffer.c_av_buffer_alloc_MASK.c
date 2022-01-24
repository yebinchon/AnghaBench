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
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  av_buffer_default_free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

AVBufferRef *FUNC3(int size)
{
    AVBufferRef *ret = NULL;
    uint8_t    *data = NULL;

    data = FUNC2(size);
    if (!data)
        return NULL;

    ret = FUNC0(data, size, av_buffer_default_free, NULL, 0);
    if (!ret)
        FUNC1(&data);

    return ret;
}
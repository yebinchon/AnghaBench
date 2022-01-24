#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  error; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ mz_stream_posix ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_READ_ERROR ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,size_t,int /*<<< orphan*/ ) ; 

int32_t FUNC2(void *stream, void *buf, int32_t size)
{
    mz_stream_posix *posix = (mz_stream_posix*)stream;
    int32_t read = (int32_t)FUNC1(buf, 1, (size_t)size, posix->handle);
    if (read < size && FUNC0(posix->handle))
    {
        posix->error = errno;
        return MZ_READ_ERROR;
    }
    return read;
}
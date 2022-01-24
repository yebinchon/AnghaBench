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
struct TYPE_2__ {scalar_t__ size; void* buffer; } ;
typedef  TYPE_1__ mz_stream_mem ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_OK ; 
 int /*<<< orphan*/  MZ_SEEK_ERROR ; 

int32_t FUNC0(void *stream, int64_t position, const void **buf)
{
    mz_stream_mem *mem = (mz_stream_mem *)stream;
    if (buf == NULL || position < 0 || mem->size < position || mem->buffer == NULL)
        return MZ_SEEK_ERROR;
    *buf = mem->buffer + position;
    return MZ_OK;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* vtbl; } ;
typedef  TYPE_2__ mz_stream ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* write ) (TYPE_2__*,void const*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_PARAM_ERROR ; 
 int /*<<< orphan*/  MZ_STREAM_ERROR ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,void const*,int /*<<< orphan*/ ) ; 

int32_t FUNC2(void *stream, const void *buf, int32_t size)
{
    mz_stream *strm = (mz_stream *)stream;
    if (size == 0)
        return size;
    if (strm == NULL || strm->vtbl == NULL || strm->vtbl->write == NULL)
        return MZ_PARAM_ERROR;
    if (FUNC0(stream) != MZ_OK)
        return MZ_STREAM_ERROR;
    return strm->vtbl->write(strm, buf, size);
}
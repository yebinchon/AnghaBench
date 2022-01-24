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
typedef  int /*<<< orphan*/  mz_stream_buffered ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(void **stream)
{
    mz_stream_buffered *buffered = NULL;
    if (stream == NULL)
        return;
    buffered = (mz_stream_buffered *)*stream;
    if (buffered != NULL)
        FUNC0(buffered);
    *stream = NULL;
}
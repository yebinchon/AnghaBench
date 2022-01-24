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
typedef  int /*<<< orphan*/  mz_stream_posix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(void **stream)
{
    mz_stream_posix *posix = NULL;
    if (stream == NULL)
        return;
    posix = (mz_stream_posix *)*stream;
    if (posix != NULL)
        FUNC0(posix);
    *stream = NULL;
}
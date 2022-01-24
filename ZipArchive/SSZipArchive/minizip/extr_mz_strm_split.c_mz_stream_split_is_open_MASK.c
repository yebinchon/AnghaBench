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
struct TYPE_2__ {int is_open; } ;
typedef  TYPE_1__ mz_stream_split ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_OK ; 
 int /*<<< orphan*/  MZ_OPEN_ERROR ; 

int32_t FUNC0(void *stream)
{
    mz_stream_split *split = (mz_stream_split *)stream;
    if (split->is_open != 1)
        return MZ_OPEN_ERROR;
    return MZ_OK;
}
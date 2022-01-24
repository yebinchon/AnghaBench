#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {TYPE_1__ stream; } ;
typedef  TYPE_2__ mz_stream_split ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int32_t FUNC3(void *stream)
{
    mz_stream_split *split = (mz_stream_split *)stream;

    if (FUNC1(split->stream.base) != MZ_OK)
        return MZ_OK;

    FUNC2("Split - Close disk\n");
    return FUNC0(split->stream.base);
}
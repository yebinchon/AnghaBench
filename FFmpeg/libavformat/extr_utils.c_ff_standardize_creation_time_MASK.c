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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(AVFormatContext *s)
{
    int64_t timestamp;
    int ret = FUNC1(s, &timestamp, 0);
    if (ret == 1)
        return FUNC0(&s->metadata, "creation_time", timestamp);
    return ret;
}
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
struct TYPE_4__ {int /*<<< orphan*/  write_packet; } ;
typedef  TYPE_1__ AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  null_buf_write ; 
 int FUNC0 (TYPE_1__**,int /*<<< orphan*/ ) ; 

int FUNC1(AVIOContext **s)
{
    int ret = FUNC0(s, 0);
    if (ret >= 0) {
        AVIOContext *pb = *s;
        pb->write_packet = null_buf_write;
    }
    return ret;
}
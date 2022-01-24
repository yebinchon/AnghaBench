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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  UID ;
struct TYPE_2__ {int /*<<< orphan*/  input_segment_ref; } ;
typedef  TYPE_1__ MXFPulldownComponent ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFPulldownComponent *mxf_pulldown = arg;
    switch(tag) {
    case 0x0d01:
        FUNC0(pb, mxf_pulldown->input_segment_ref, 16);
        break;
    }
    return 0;
}
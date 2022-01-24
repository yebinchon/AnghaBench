#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int key_frame; int /*<<< orphan*/  metadata; } ;
struct TYPE_10__ {int /*<<< orphan*/  frame_packing; } ;
struct TYPE_12__ {TYPE_1__ sei; } ;
struct TYPE_11__ {scalar_t__ sei_recovery_frame_cnt; TYPE_4__* f; } ;
typedef  TYPE_2__ H264Picture ;
typedef  TYPE_3__ H264Context ;
typedef  TYPE_4__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(H264Context *h, AVFrame *dst, H264Picture *srcp)
{
    AVFrame *src = srcp->f;
    int ret;

    ret = FUNC1(dst, src);
    if (ret < 0)
        return ret;

    FUNC0(&dst->metadata, "stereo_mode", FUNC2(&h->sei.frame_packing), 0);

    if (srcp->sei_recovery_frame_cnt == 0)
        dst->key_frame = 1;

    return 0;
}
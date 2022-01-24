#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* priv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  write_buffer; int /*<<< orphan*/  read_packet; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pps_ref; int /*<<< orphan*/  pps; int /*<<< orphan*/ * sps_ref; int /*<<< orphan*/  sps; TYPE_1__ common; } ;
typedef  TYPE_2__ CodedBitstreamH264Context ;
typedef  TYPE_3__ CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(CodedBitstreamContext *ctx)
{
    CodedBitstreamH264Context *h264 = ctx->priv_data;
    int i;

    FUNC3(&h264->common.read_packet);

    FUNC2(&h264->common.write_buffer);

    for (i = 0; i < FUNC0(h264->sps); i++)
        FUNC1(&h264->sps_ref[i]);
    for (i = 0; i < FUNC0(h264->pps); i++)
        FUNC1(&h264->pps_ref[i]);
}
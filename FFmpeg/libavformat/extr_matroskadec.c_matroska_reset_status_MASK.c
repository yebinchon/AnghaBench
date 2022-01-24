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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_5__ {int num_levels; int resync_pos; TYPE_1__* ctx; scalar_t__ unknown_count; scalar_t__ current_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  pb; } ;
typedef  TYPE_2__ MatroskaDemuxContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(MatroskaDemuxContext *matroska,
                                 uint32_t id, int64_t position)
{
    if (position >= 0) {
        int64_t err = FUNC1(matroska->ctx->pb, position, SEEK_SET);
        if (err < 0)
            return err;
    }

    matroska->current_id    = id;
    matroska->num_levels    = 1;
    matroska->unknown_count = 0;
    matroska->resync_pos = FUNC2(matroska->ctx->pb);
    if (id)
        matroska->resync_pos -= (FUNC0(id) + 7) / 8;

    return 0;
}
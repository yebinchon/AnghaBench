#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_3__ {int /*<<< orphan*/  scantable; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ ProresContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(ProresContext *ctx, PutBitContext *pb,
                              const uint16_t *src, ptrdiff_t linesize,
                              int mbs_per_slice, int16_t *blocks,
                              int blocks_per_mb, int plane_size_factor,
                              const int16_t *qmat)
{
    int blocks_per_slice, saved_pos;

    saved_pos = FUNC3(pb);
    blocks_per_slice = mbs_per_slice * blocks_per_mb;

    FUNC1(pb, blocks, blocks_per_slice, qmat[0]);
    FUNC0(pb, blocks, blocks_per_slice, plane_size_factor,
               ctx->scantable, qmat);
    FUNC2(pb);

    return (FUNC3(pb) - saved_pos) >> 3;
}
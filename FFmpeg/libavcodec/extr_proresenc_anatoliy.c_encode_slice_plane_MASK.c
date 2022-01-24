#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_7__ {int buf; } ;
typedef  TYPE_1__ PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(int16_t *blocks, int mb_count, uint8_t *buf, unsigned buf_size, int *qmat, int sub_sample_chroma,
                              const uint8_t ff_prores_scan[64])
{
    int blocks_per_slice;
    PutBitContext pb;

    blocks_per_slice = mb_count << (2 - sub_sample_chroma);
    FUNC3(&pb, buf, buf_size);

    FUNC1(&pb, blocks, blocks_per_slice, qmat);
    FUNC0(&pb, blocks, blocks_per_slice, qmat, ff_prores_scan);

    FUNC2(&pb);
    return FUNC4(&pb) - pb.buf;
}
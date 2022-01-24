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
typedef  size_t int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_4__ {size_t* raster_end; } ;
struct TYPE_5__ {size_t* block_last_index; TYPE_1__ inter_scantable; } ;
typedef  TYPE_2__ MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,size_t,size_t,int /*<<< orphan*/ ) ; 

void FUNC2(MpegEncContext *s,
                                      int16_t *block, int32_t index,
                                      int32_t qscale)
{
    int32_t qmul, qadd;
    int32_t nCoeffs;

    FUNC0(s->block_last_index[index] >= 0);

    qadd = (qscale - 1) | 1;
    qmul = qscale << 1;

    nCoeffs = s->inter_scantable.raster_end[s->block_last_index[index]];

    FUNC1(block, qmul, qadd, nCoeffs, 0);
}
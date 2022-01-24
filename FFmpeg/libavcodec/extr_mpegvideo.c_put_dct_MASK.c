#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* idct_put ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ;} ;
struct TYPE_6__ {TYPE_1__ idsp; int /*<<< orphan*/  (* dct_unquantize_intra ) (TYPE_2__*,int /*<<< orphan*/ *,int,int) ;} ;
typedef  TYPE_2__ MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(MpegEncContext *s,
                           int16_t *block, int i, uint8_t *dest, int line_size, int qscale)
{
    s->dct_unquantize_intra(s, block, i, qscale);
    s->idsp.idct_put(dest, line_size, block);
}
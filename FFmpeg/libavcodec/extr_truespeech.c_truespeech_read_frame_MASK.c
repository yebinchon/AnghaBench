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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* bswap_buf ) (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ;} ;
struct TYPE_5__ {int flag; int* offset1; int* offset2; int* pulseval; int* pulseoff; void** pulsepos; void** vector; scalar_t__ buffer; TYPE_1__ bdsp; } ;
typedef  TYPE_2__ TSContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 void*** ts_codebook ; 

__attribute__((used)) static void FUNC5(TSContext *dec, const uint8_t *input)
{
    GetBitContext gb;

    dec->bdsp.bswap_buf((uint32_t *) dec->buffer, (const uint32_t *) input, 8);
    FUNC3(&gb, dec->buffer, 32 * 8);

    dec->vector[7] = ts_codebook[7][FUNC0(&gb, 3)];
    dec->vector[6] = ts_codebook[6][FUNC0(&gb, 3)];
    dec->vector[5] = ts_codebook[5][FUNC0(&gb, 3)];
    dec->vector[4] = ts_codebook[4][FUNC0(&gb, 4)];
    dec->vector[3] = ts_codebook[3][FUNC0(&gb, 4)];
    dec->vector[2] = ts_codebook[2][FUNC0(&gb, 4)];
    dec->vector[1] = ts_codebook[1][FUNC0(&gb, 5)];
    dec->vector[0] = ts_codebook[0][FUNC0(&gb, 5)];
    dec->flag      = FUNC1(&gb);

    dec->offset1[0] = FUNC0(&gb, 4) << 4;
    dec->offset2[3] = FUNC0(&gb, 7);
    dec->offset2[2] = FUNC0(&gb, 7);
    dec->offset2[1] = FUNC0(&gb, 7);
    dec->offset2[0] = FUNC0(&gb, 7);

    dec->offset1[1]  = FUNC0(&gb, 4);
    dec->pulseval[1] = FUNC0(&gb, 14);
    dec->pulseval[0] = FUNC0(&gb, 14);

    dec->offset1[1] |= FUNC0(&gb, 4) << 4;
    dec->pulseval[3] = FUNC0(&gb, 14);
    dec->pulseval[2] = FUNC0(&gb, 14);

    dec->offset1[0] |= FUNC1(&gb);
    dec->pulsepos[0] = FUNC2(&gb, 27);
    dec->pulseoff[0] = FUNC0(&gb, 4);

    dec->offset1[0] |= FUNC1(&gb) << 1;
    dec->pulsepos[1] = FUNC2(&gb, 27);
    dec->pulseoff[1] = FUNC0(&gb, 4);

    dec->offset1[0] |= FUNC1(&gb) << 2;
    dec->pulsepos[2] = FUNC2(&gb, 27);
    dec->pulseoff[2] = FUNC0(&gb, 4);

    dec->offset1[0] |= FUNC1(&gb) << 3;
    dec->pulsepos[3] = FUNC2(&gb, 27);
    dec->pulseoff[3] = FUNC0(&gb, 4);
}
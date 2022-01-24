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
struct TYPE_3__ {int spillover_bitsize; void* spillover_nbits; int /*<<< orphan*/  has_residual_lsps; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ WMAVoiceContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(WMAVoiceContext *s)
{
    GetBitContext *gb = &s->gb;
    unsigned int res, n_superframes = 0;

    FUNC3(gb, 4);          // packet sequence number
    s->has_residual_lsps = FUNC1(gb);
    do {
        res = FUNC0(gb, 6); // number of superframes per packet
                               // (minus first one if there is spillover)
        n_superframes += res;
    } while (res == 0x3F);
    s->spillover_nbits   = FUNC0(gb, s->spillover_bitsize);

    return FUNC2(gb) >= 0 ? n_superframes : AVERROR_INVALIDDATA;
}
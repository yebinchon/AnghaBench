#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  RA144Context ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(RA144Context *ractx, const int16_t  *lpc_coefs,
                               int gval, GetBitContext *gb)
{
    int cba_idx = FUNC1(gb, 7); // index of the adaptive CB, 0 if none
    int gain    = FUNC1(gb, 8);
    int cb1_idx = FUNC1(gb, 7);
    int cb2_idx = FUNC1(gb, 7);

    FUNC0(ractx, lpc_coefs, cba_idx, cb1_idx, cb2_idx, gval,
                          gain);
}
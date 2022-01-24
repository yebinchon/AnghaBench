#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int size_in_bits; } ;
typedef  TYPE_1__ PutBitContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(PutBitContext *pb,
                      const uint8_t *data, int size,
                      GetBitContext *gb, int nbits)
{
    int rmn_bytes, rmn_bits;

    rmn_bits = rmn_bytes = FUNC3(gb);
    if (rmn_bits < nbits)
        return;
    if (nbits > pb->size_in_bits - FUNC5(pb))
        return;
    rmn_bits &= 7; rmn_bytes >>= 3;
    if ((rmn_bits = FUNC0(rmn_bits, nbits)) > 0)
        FUNC4(pb, rmn_bits, FUNC2(gb, rmn_bits));
    FUNC1(pb, data + size - rmn_bytes,
                 FUNC0(nbits - rmn_bits, rmn_bytes << 3));
}
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
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC2(PutBitContext *pb, int dx, int dy)
{
    int nbits, mask;

    FUNC1(pb, 1, 1); /* edge */
    FUNC1(pb, 1, 1); /* line select */
    nbits = 2;
    FUNC0(&nbits, dx);
    FUNC0(&nbits, dy);

    mask = (1 << nbits) - 1;
    FUNC1(pb, 4, nbits - 2); /* 16 bits precision */
    if (dx == 0) {
        FUNC1(pb, 1, 0);
        FUNC1(pb, 1, 1);
        FUNC1(pb, nbits, dy & mask);
    } else if (dy == 0) {
        FUNC1(pb, 1, 0);
        FUNC1(pb, 1, 0);
        FUNC1(pb, nbits, dx & mask);
    } else {
        FUNC1(pb, 1, 1);
        FUNC1(pb, nbits, dx & mask);
        FUNC1(pb, nbits, dy & mask);
    }
}
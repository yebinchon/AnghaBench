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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ PutBitContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(AVIOContext *pb,
                         int xmin, int xmax, int ymin, int ymax)
{
    PutBitContext p;
    uint8_t buf[256];
    int nbits, mask;

    FUNC2(&p, buf, sizeof(buf));

    nbits = 0;
    FUNC3(&nbits, xmin);
    FUNC3(&nbits, xmax);
    FUNC3(&nbits, ymin);
    FUNC3(&nbits, ymax);
    mask = (1 << nbits) - 1;

    /* rectangle info */
    FUNC4(&p, 5, nbits);
    FUNC4(&p, nbits, xmin & mask);
    FUNC4(&p, nbits, xmax & mask);
    FUNC4(&p, nbits, ymin & mask);
    FUNC4(&p, nbits, ymax & mask);

    FUNC1(&p);
    FUNC0(pb, buf, FUNC5(&p) - p.buf);
}
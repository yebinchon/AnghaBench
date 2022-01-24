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
                           int a, int b, int c, int d, int tx, int ty)
{
    PutBitContext p;
    uint8_t buf[256];
    int nbits;

    FUNC2(&p, buf, sizeof(buf));

    FUNC4(&p, 1, 1); /* a, d present */
    nbits = 1;
    FUNC3(&nbits, a);
    FUNC3(&nbits, d);
    FUNC4(&p, 5, nbits); /* nb bits */
    FUNC4(&p, nbits, a);
    FUNC4(&p, nbits, d);

    FUNC4(&p, 1, 1); /* b, c present */
    nbits = 1;
    FUNC3(&nbits, c);
    FUNC3(&nbits, b);
    FUNC4(&p, 5, nbits); /* nb bits */
    FUNC4(&p, nbits, c);
    FUNC4(&p, nbits, b);

    nbits = 1;
    FUNC3(&nbits, tx);
    FUNC3(&nbits, ty);
    FUNC4(&p, 5, nbits); /* nb bits */
    FUNC4(&p, nbits, tx);
    FUNC4(&p, nbits, ty);

    FUNC1(&p);
    FUNC0(pb, buf, FUNC5(&p) - p.buf);
}
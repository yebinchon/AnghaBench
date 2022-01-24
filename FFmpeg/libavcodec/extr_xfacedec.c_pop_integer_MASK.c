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
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ offset; scalar_t__ range; } ;
typedef  TYPE_1__ ProbRange ;
typedef  int /*<<< orphan*/  BigInt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC3(BigInt *b, const ProbRange *pranges)
{
    uint8_t r;
    int i;

    /* extract the last byte into r, and shift right b by 8 bits */
    FUNC1(b, 0, &r);

    i = 0;
    while (r < pranges->offset || r >= pranges->range + pranges->offset) {
        pranges++;
        i++;
    }
    FUNC2(b, pranges->range);
    FUNC0(b, r - pranges->offset);
    return i;
}
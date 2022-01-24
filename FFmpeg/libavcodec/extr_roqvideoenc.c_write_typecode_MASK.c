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
typedef  int uint8_t ;
struct TYPE_3__ {int typeSpool; int typeSpoolLength; scalar_t__ argumentSpool; scalar_t__ args; int /*<<< orphan*/  pout; } ;
typedef  TYPE_1__ CodingSpool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(CodingSpool *s, uint8_t type)
{
    s->typeSpool |= (type & 3) << (14 - s->typeSpoolLength);
    s->typeSpoolLength += 2;
    if (s->typeSpoolLength == 16) {
        FUNC1(s->pout, s->typeSpool);
        FUNC0(s->pout, s->argumentSpool,
                              s->args - s->argumentSpool);
        s->typeSpoolLength = 0;
        s->typeSpool = 0;
        s->args = s->argumentSpool;
    }
}
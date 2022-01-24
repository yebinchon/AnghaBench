#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_4__ {scalar_t__* counters; int /*<<< orphan*/  p; } ;
typedef  int /*<<< orphan*/  CRangeEnc ;
typedef  TYPE_1__ CLenPriceEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t,size_t const*) ; 

__attribute__((used)) static void FUNC2(CLenPriceEnc *p, CRangeEnc *rc, uint32_t symbol, uint32_t posState, bool updatePrice, const uint32_t *ProbPrices)
{
  FUNC0(&p->p, rc, symbol, posState);
  if (updatePrice)
    if (--p->counters[posState] == 0)
      FUNC1(p, posState, ProbPrices);
}
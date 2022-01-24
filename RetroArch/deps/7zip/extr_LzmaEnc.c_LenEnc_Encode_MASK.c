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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ high; int /*<<< orphan*/  choice2; scalar_t__ mid; int /*<<< orphan*/  choice; scalar_t__ low; } ;
typedef  int /*<<< orphan*/  CRangeEnc ;
typedef  TYPE_1__ CLenEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ kLenNumHighBits ; 
 scalar_t__ kLenNumLowBits ; 
 scalar_t__ kLenNumLowSymbols ; 
 scalar_t__ kLenNumMidBits ; 
 scalar_t__ kLenNumMidSymbols ; 

__attribute__((used)) static void FUNC2(CLenEnc *p, CRangeEnc *rc, uint32_t symbol, uint32_t posState)
{
  if (symbol < kLenNumLowSymbols)
  {
    FUNC0(rc, &p->choice, 0);
    FUNC1(rc, p->low + (posState << kLenNumLowBits), kLenNumLowBits, symbol);
  }
  else
  {
    FUNC0(rc, &p->choice, 1);
    if (symbol < kLenNumLowSymbols + kLenNumMidSymbols)
    {
      FUNC0(rc, &p->choice2, 0);
      FUNC1(rc, p->mid + (posState << kLenNumMidBits), kLenNumMidBits, symbol - kLenNumLowSymbols);
    }
    else
    {
      FUNC0(rc, &p->choice2, 1);
      FUNC1(rc, p->high, kLenNumHighBits, symbol - kLenNumLowSymbols - kLenNumMidSymbols);
    }
  }
}
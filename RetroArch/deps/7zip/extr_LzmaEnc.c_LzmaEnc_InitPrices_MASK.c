#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ tableSize; } ;
struct TYPE_6__ {int pb; int /*<<< orphan*/  ProbPrices; TYPE_3__ repLenEnc; TYPE_3__ lenEnc; scalar_t__ numFastBytes; int /*<<< orphan*/  fastMode; } ;
typedef  TYPE_1__ CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ LZMA_MATCH_LEN_MIN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 

void FUNC3(CLzmaEnc *p)
{
  if (!p->fastMode)
  {
    FUNC1(p);
    FUNC0(p);
  }

  p->lenEnc.tableSize =
  p->repLenEnc.tableSize =
      p->numFastBytes + 1 - LZMA_MATCH_LEN_MIN;
  FUNC2(&p->lenEnc, 1 << p->pb, p->ProbPrices);
  FUNC2(&p->repLenEnc, 1 << p->pb, p->ProbPrices);
}
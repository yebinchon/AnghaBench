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
struct TYPE_4__ {int /*<<< orphan*/  pIncr; scalar_t__ aMap; int /*<<< orphan*/  pFd; int /*<<< orphan*/  aBuffer; int /*<<< orphan*/  aAlloc; } ;
typedef  TYPE_1__ PmaReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(PmaReader *pReadr){
  FUNC2(pReadr->aAlloc);
  FUNC2(pReadr->aBuffer);
  if( pReadr->aMap ) FUNC1(pReadr->pFd, 0, pReadr->aMap);
  FUNC3(pReadr->pIncr);
  FUNC0(pReadr, 0, sizeof(PmaReader));
}
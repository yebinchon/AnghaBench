#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int offset; int /*<<< orphan*/  code; } ;
struct TYPE_6__ {TYPE_1__ i; } ;
typedef  TYPE_2__ Instruction ;

/* Variables and functions */
 scalar_t__ IAny ; 
 scalar_t__ ITestAny ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2 (Instruction *p, int n) {
  FUNC0(FUNC1(p));
  p->i.code += ITestAny - IAny;
  p->i.offset = n;
}
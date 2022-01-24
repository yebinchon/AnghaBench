#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ code; int offset; int /*<<< orphan*/  aux; } ;
struct TYPE_10__ {TYPE_1__ i; } ;
typedef  TYPE_2__ Instruction ;

/* Variables and functions */
 scalar_t__ IChoice ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 
 int FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6 (Instruction *p) {
  FUNC0(p->i.code == IChoice);
  if (FUNC2(p + 1)) {
    int lc = FUNC5(p + 1);
    FUNC4(p, lc, 1);
    FUNC0(FUNC2(p) && (p + lc)->i.code == IChoice);
    (p + lc)->i.aux = FUNC3(p);
    FUNC1(p, (p + lc)->i.offset);
    (p + lc)->i.offset -= lc;
  }
}
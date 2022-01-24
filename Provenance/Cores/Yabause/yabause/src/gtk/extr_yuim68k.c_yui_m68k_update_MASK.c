#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  PC; } ;
typedef  TYPE_1__ m68kregs_struct ;
struct TYPE_9__ {int /*<<< orphan*/  buttonStep; int /*<<< orphan*/  regList; int /*<<< orphan*/  bpList; int /*<<< orphan*/  uLabel; } ;
typedef  TYPE_2__ YuiM68k ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 

void FUNC4(YuiM68k * m68k) {
  m68kregs_struct m68kregs;
  FUNC0(&m68kregs);
  FUNC2(m68k,m68kregs.PC);
  FUNC3(m68k, &m68kregs);	
  FUNC1(m68k->uLabel, TRUE);
  FUNC1(m68k->bpList, TRUE);
  FUNC1(m68k->regList, TRUE);
  FUNC1(m68k->buttonStep, TRUE);
}
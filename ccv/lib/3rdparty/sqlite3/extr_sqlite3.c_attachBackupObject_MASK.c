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
struct TYPE_4__ {int isAttached; struct TYPE_4__* pNext; int /*<<< orphan*/  pSrc; } ;
typedef  TYPE_1__ sqlite3_backup ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__** FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(sqlite3_backup *p){
  sqlite3_backup **pp;
  FUNC0( FUNC1(p->pSrc) );
  pp = FUNC3(FUNC2(p->pSrc));
  p->pNext = *pp;
  *pp = p;
  p->isAttached = 1;
}
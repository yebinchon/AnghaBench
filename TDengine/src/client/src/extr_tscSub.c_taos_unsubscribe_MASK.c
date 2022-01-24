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
struct TYPE_3__ {int /*<<< orphan*/  taos; struct TYPE_3__* signature; } ;
typedef  int /*<<< orphan*/  TAOS_SUB ;
typedef  TYPE_1__ SSub ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(TAOS_SUB *tsub) {
  SSub *pSub = (SSub *)tsub;

  if (pSub == NULL) return;
  if (pSub->signature != pSub) return;

  FUNC1(pSub->taos);
  FUNC0(pSub);
}
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
struct TYPE_6__ {int /*<<< orphan*/  mark; int /*<<< orphan*/  filter; int /*<<< orphan*/  mdct_win; TYPE_1__* band; int /*<<< orphan*/  mdct; } ;
typedef  TYPE_2__ envelope_lookup ;
struct TYPE_5__ {int /*<<< orphan*/  window; } ;

/* Variables and functions */
 int VE_BANDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(envelope_lookup *e){
  int i;
  FUNC1(&e->mdct);
  for(i=0;i<VE_BANDS;i++)
    FUNC0(e->band[i].window);
  FUNC0(e->mdct_win);
  FUNC0(e->filter);
  FUNC0(e->mark);
  FUNC2(e,0,sizeof(*e));
}
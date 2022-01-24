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
struct TYPE_5__ {int /*<<< orphan*/  nval; int /*<<< orphan*/  ival; } ;
struct TYPE_6__ {int k; TYPE_1__ u; } ;
typedef  TYPE_2__ expdesc ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
#define  VKFLT 129 
#define  VKINT 128 
 scalar_t__ FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const expdesc *e, TValue *v) {
  if (FUNC0(e))
    return 0;  /* not a numeral */
  switch (e->k) {
    case VKINT:
      if (v) FUNC2(v, e->u.ival);
      return 1;
    case VKFLT:
      if (v) FUNC1(v, e->u.nval);
      return 1;
    default: return 0;
  }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  varname; } ;
struct TYPE_5__ {int /*<<< orphan*/  nactvar; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_1__ FuncState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC3 (FuncState *fs, TString *n) {
  int i;
  for (i = FUNC0(fs->nactvar) - 1; i >= 0; i--) {
    if (FUNC1(n, FUNC2(fs, i)->varname))
      return i;
  }
  return -1;  /* not found */
}
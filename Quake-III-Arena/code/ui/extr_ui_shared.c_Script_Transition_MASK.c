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
typedef  int /*<<< orphan*/  rectDef_t ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ itemDef_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,float*) ; 
 scalar_t__ FUNC1 (char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,float) ; 
 scalar_t__ FUNC3 (char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char**,char const**) ; 

void FUNC5(itemDef_t *item, char **args) {
  const char *name;
	rectDef_t rectFrom, rectTo;
  int time;
	float amt;

  if (FUNC4(args, &name)) {
    if ( FUNC3(args, &rectFrom) && FUNC3(args, &rectTo) && FUNC1(args, &time) && FUNC0(args, &amt)) {
      FUNC2(item->parent, name, rectFrom, rectTo, time, amt);
    }
  }
}
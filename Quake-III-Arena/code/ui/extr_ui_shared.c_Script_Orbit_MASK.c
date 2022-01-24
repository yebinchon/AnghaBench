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
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ itemDef_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,float*) ; 
 scalar_t__ FUNC1 (char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,float,float,float,float,int) ; 
 scalar_t__ FUNC3 (char**,char const**) ; 

void FUNC4(itemDef_t *item, char **args) {
  const char *name;
  float cx, cy, x, y;
  int time;

  if (FUNC3(args, &name)) {
    if ( FUNC0(args, &x) && FUNC0(args, &y) && FUNC0(args, &cx) && FUNC0(args, &cy) && FUNC1(args, &time) ) {
      FUNC2(item->parent, name, x, y, cx, cy, time);
    }
  }
}
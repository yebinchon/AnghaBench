#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  z_streamp ;
struct TYPE_5__ {struct TYPE_5__* hufts; struct TYPE_5__* window; } ;
typedef  TYPE_1__ inflate_blocks_statef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  Z_NULL ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(inflate_blocks_statef *s, z_streamp z)
{
  FUNC2(s, z, Z_NULL);
  FUNC1(z, s->window);
  FUNC1(z, s->hufts);
  FUNC1(z, s);
  FUNC0(("inflate:   blocks freed\n"));
  return Z_OK;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ program; } ;
struct TYPE_4__ {TYPE_3__ gs; int /*<<< orphan*/  fs; int /*<<< orphan*/  ps; int /*<<< orphan*/  vs; } ;
typedef  TYPE_1__ GX2Shader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(GX2Shader *shader)
{
   FUNC3(&shader->vs);
   FUNC2(&shader->ps);
   FUNC0(&shader->fs);

   if (shader->gs.program)
      FUNC1(&shader->gs);
}
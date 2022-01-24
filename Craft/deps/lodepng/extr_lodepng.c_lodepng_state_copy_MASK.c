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
struct TYPE_5__ {scalar_t__ error; int /*<<< orphan*/  info_png; int /*<<< orphan*/  info_raw; } ;
typedef  TYPE_1__ LodePNGState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(LodePNGState* dest, const LodePNGState* source)
{
  FUNC4(dest);
  *dest = *source;
  FUNC1(&dest->info_raw);
  FUNC3(&dest->info_png);
  dest->error = FUNC0(&dest->info_raw, &source->info_raw); if(dest->error) return;
  dest->error = FUNC2(&dest->info_png, &source->info_png); if(dest->error) return;
}
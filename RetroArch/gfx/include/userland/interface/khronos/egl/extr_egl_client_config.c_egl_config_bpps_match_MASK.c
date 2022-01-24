#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  features; } ;
typedef  int /*<<< orphan*/  FEATURES_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* formats ; 

bool FUNC7(int id0, int id1) /* bpps of all buffers match */
{
   FEATURES_T config0 = formats[id0].features;
   FEATURES_T config1 = formats[id1].features;

   return
      FUNC5(config0)     == FUNC5(config1) &&
      FUNC3(config0)   == FUNC3(config1) &&
      FUNC1(config0)    == FUNC1(config1) &&
      FUNC0(config0)   == FUNC0(config1) &&
      FUNC2(config0)   == FUNC2(config1) &&
      FUNC6(config0) == FUNC6(config1) &&
      FUNC4(config0)    == FUNC4(config1);
}
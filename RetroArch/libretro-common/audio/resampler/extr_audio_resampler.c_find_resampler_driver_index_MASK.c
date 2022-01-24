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
struct TYPE_2__ {int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 TYPE_1__** resampler_drivers ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const char *ident)
{
   unsigned i;

   for (i = 0; resampler_drivers[i]; i++)
      if (FUNC0(ident, resampler_drivers[i]->ident))
         return i;
   return -1;
}
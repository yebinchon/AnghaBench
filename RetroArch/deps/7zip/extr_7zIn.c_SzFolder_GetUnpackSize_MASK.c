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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/ * UnpackSizes; } ;
typedef  TYPE_1__ CSzFolder ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

uint64_t FUNC2(CSzFolder *p)
{
   int i = (int)FUNC1(p);
   if (i == 0)
      return 0;
   for (i--; i >= 0; i--)
      if (FUNC0(p, i) < 0)
         return p->UnpackSizes[i];
   /* throw 1; */
   return 0;
}
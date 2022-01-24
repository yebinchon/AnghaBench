#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/ * base_mem; int /*<<< orphan*/ * mem; } ;
typedef  TYPE_1__ T3Memory ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

T3Memory * FUNC2(u32 size)
{
   T3Memory * mem;

   if ((mem = (T3Memory *) FUNC0(1, sizeof(T3Memory))) == NULL)
      return NULL;

   if ((mem->base_mem = (u8 *) FUNC0(size, sizeof(u8))) == NULL)
   {
      FUNC1(mem);
      return NULL;
   }

   mem->mem = mem->base_mem + size;

   return mem;
}
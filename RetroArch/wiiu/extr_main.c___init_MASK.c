#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((weak))
void FUNC1(void)
{
   extern void (*const __CTOR_LIST__)(void);
   extern void (*const __CTOR_END__)(void);

   void (*const *ctor)(void) = &__CTOR_LIST__;
   while (ctor < &__CTOR_END__) {
      (*ctor++)();
   }
}
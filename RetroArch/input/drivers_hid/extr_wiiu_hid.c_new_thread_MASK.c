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
struct TYPE_4__ {int /*<<< orphan*/  tag; } ;
typedef  TYPE_1__ OSThread ;

/* Variables and functions */
 int /*<<< orphan*/  OS_THREAD_TAG ; 
 TYPE_1__* FUNC0 (int,int) ; 

__attribute__((used)) static OSThread *FUNC1(void)
{
   OSThread *t = FUNC0(8, sizeof(OSThread));

   if (!t)
      return NULL;

   t->tag      = OS_THREAD_TAG;

   return t;
}
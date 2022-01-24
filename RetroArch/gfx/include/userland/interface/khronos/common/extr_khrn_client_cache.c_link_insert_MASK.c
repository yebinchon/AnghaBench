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
struct TYPE_5__ {struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef  TYPE_1__ CACHE_LINK_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(CACHE_LINK_T *link, CACHE_LINK_T *prev, CACHE_LINK_T *next)
{
   FUNC0(prev->next == next);
   FUNC0(next->prev == prev);

   link->prev = prev;
   link->next = next;
   prev->next = link;
   next->prev = link;
}
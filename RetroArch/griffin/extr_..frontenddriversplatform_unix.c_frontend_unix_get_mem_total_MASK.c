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
typedef  long uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_PAGE_SIZE ; 
 int /*<<< orphan*/  _SC_PHYS_PAGES ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t FUNC1(void)
{
   long pages            = FUNC0(_SC_PHYS_PAGES);
   long page_size        = FUNC0(_SC_PAGE_SIZE);
   return pages * page_size;
}
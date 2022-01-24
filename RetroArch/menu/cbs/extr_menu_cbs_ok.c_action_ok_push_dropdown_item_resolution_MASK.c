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
 int FUNC0 (char const*,char const*,unsigned int,size_t,size_t) ; 
 int FUNC1 () ; 

__attribute__((used)) static int FUNC2(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   if (FUNC0(path,
            label, type, idx, entry_idx) == 1)
   {
      /* TODO/FIXME - menu drivers like XMB don't rescale
       * automatically */
      return FUNC1();
   }
   return 0;
}
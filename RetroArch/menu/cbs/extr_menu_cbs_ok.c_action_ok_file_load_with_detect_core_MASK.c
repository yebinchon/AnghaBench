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
 int /*<<< orphan*/  MSG_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ ,size_t,size_t,char const*,char const*,unsigned int,int) ; 

__attribute__((used)) static int FUNC1(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{

   type  = 0;
   label = NULL;

   return FUNC0(
         MSG_UNKNOWN, idx, entry_idx,
         path, label, type, false);
}
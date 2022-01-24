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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

__attribute__((used)) static void
FUNC2(char *dst, const char *src, size_t dstsize)
{
   size_t resid = dstsize - (FUNC0(dst) + 1);
   if (resid == 0)
      return;
   FUNC1(dst, src, resid);
}
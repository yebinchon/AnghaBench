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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,size_t,size_t) ; 
 size_t FUNC3 (char const*) ; 

char *
FUNC4 (char *restrict dst, const char *restrict src, size_t chk_size)
{
  size_t len = FUNC3(src);
  if (FUNC0 (chk_size < len + 1)) {
    FUNC2("__strcpy_chk object size check failed: dst %p, src %p, (%zu < %zu + 1)", dst, src, chk_size, len);
  }
  FUNC1(dst, src, len+1);
  return dst;
}
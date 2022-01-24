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
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,size_t,size_t,size_t) ; 
 size_t FUNC3 (char const*) ; 

char *
FUNC4 (char *restrict dst, const char *restrict src, size_t chk_size)
{
  size_t len1 = FUNC3(dst);
  size_t len2 = FUNC3(src);
  size_t required_len = len1 + len2 + 1;
  if (FUNC0 (chk_size < required_len)) {
    FUNC2("__strcat_chk object size check failed: dst %p, src %p, (%zu < %zu + %zu + 1)", dst, src, chk_size, len1, len2);
  }
  FUNC1(dst + len1, src, len2 + 1);
  return dst;
}
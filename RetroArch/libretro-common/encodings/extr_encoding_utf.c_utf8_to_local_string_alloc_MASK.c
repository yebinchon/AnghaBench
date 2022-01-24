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
 int /*<<< orphan*/  CODEPAGE_LOCAL ; 
 int /*<<< orphan*/  CODEPAGE_UTF8 ; 
 char* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 

char* FUNC2(const char *str)
{
   if (str && *str)
   {
#if defined(_WIN32) && !defined(_XBOX) && !defined(UNICODE)
      return mb_to_mb_string_alloc(str, CODEPAGE_UTF8, CODEPAGE_LOCAL);
#else
      /* assume string needs no modification if not on Windows */
      return FUNC1(str);
#endif
   }
   return NULL;
}
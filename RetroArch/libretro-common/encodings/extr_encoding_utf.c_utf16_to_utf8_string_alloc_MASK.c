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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 (char*,int /*<<< orphan*/  const*,size_t) ; 

char* FUNC4(const wchar_t *str)
{
#ifdef _WIN32
   int len        = 0;
#else
   size_t len     = 0;
#endif
   char *buf      = NULL;

   if (!str || !*str)
      return NULL;

#ifdef _WIN32
   {
      UINT code_page = CP_UTF8;
      len            = WideCharToMultiByte(code_page,
            0, str, -1, NULL, 0, NULL, NULL);

      /* fallback to ANSI codepage instead */
      if (!len)
      {
         code_page   = CP_ACP;
         len         = WideCharToMultiByte(code_page,
               0, str, -1, NULL, 0, NULL, NULL);
      }

      buf = (char*)calloc(len, sizeof(char));

      if (!buf)
         return NULL;

      if (WideCharToMultiByte(code_page,
            0, str, -1, buf, len, NULL, NULL) < 0)
      {
         free(buf);
         return NULL;
      }
   }
#else
   /* NOTE: For now, assume non-Windows platforms' 
    * locale is already UTF-8. */
   len = FUNC3(NULL, str, 0) + 1;

   if (len)
   {
      buf = (char*)FUNC1(len, sizeof(char));

      if (!buf)
         return NULL;

      if (FUNC3(buf, str, len) == (size_t)-1)
      {
         FUNC2(buf);
         return NULL;
      }
   }
#endif

   return buf;
}
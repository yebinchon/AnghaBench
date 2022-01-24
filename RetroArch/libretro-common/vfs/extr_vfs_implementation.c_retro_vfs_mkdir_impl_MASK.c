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

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int) ; 
 int FUNC5 (char const*,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 

int FUNC9(const char *dir)
{
#if defined(_WIN32)
#ifdef LEGACY_WIN32
   int ret       = _mkdir(dir);
#else
   wchar_t *dirW = utf8_to_utf16_string_alloc(dir);
   int       ret = -1;

   if (dirW)
   {
      ret = _wmkdir(dirW);
      free(dirW);
   }
#endif
#elif defined(IOS)
   int ret = mkdir(dir, 0755);
#elif defined(VITA) || defined(PSP)
   int ret = sceIoMkdir(dir, 0777);
#elif defined(PS2)
   int ret = fileXioMkdir(dir, 0777);
#elif defined(ORBIS)
   int ret = orbisMkdir(dir, 0755);
#elif defined(__QNX__)
   int ret = mkdir(dir, 0777);
#else
   int ret = FUNC4(dir, 0750);
#endif

   if (FUNC6(ret))
      return -2;
   return ret < 0 ? -1 : 0;
}
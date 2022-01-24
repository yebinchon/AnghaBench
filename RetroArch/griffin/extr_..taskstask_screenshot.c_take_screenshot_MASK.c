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
 int /*<<< orphan*/  FUNC0 (int*,int*,int*,int*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (char const*,char const*,int,int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 

bool FUNC8(
      const char *screenshot_dir,
      const char *name_base,
      bool silence, bool has_valid_framebuffer,
      bool fullpath, bool use_thread)
{
   bool is_paused              = false;
   bool is_idle                = false;
   bool is_slowmotion          = false;
   bool is_perfcnt_enable      = false;
   bool ret                    = false;

   FUNC0(&is_paused, &is_idle, &is_slowmotion, &is_perfcnt_enable);

   /* No way to infer screenshot directory. */
   if (     FUNC1(screenshot_dir)
         && FUNC1(name_base))
      return false;

   ret       = FUNC2(
         screenshot_dir,
         name_base, silence, is_paused, is_idle,
         has_valid_framebuffer, fullpath, use_thread,
         FUNC7() &&
         FUNC5(),
         FUNC6(),
         FUNC4()
         );

   if (is_paused && !is_idle)
         FUNC3();

   return ret;
}
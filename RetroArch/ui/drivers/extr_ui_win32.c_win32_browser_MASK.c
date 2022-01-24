#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* open ) (TYPE_2__*) ;} ;
typedef  TYPE_1__ ui_browser_window_t ;
struct TYPE_6__ {char* filters; char* title; char* path; int /*<<< orphan*/  startdir; int /*<<< orphan*/  window; } ;
typedef  TYPE_2__ ui_browser_window_state_t ;
typedef  int /*<<< orphan*/  new_title ;
typedef  int /*<<< orphan*/  new_file ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 () ; 

__attribute__((used)) static bool FUNC6(
      HWND owner,
      char *filename,
      size_t filename_size,
      const char *extensions,
      const char *title,
      const char *initial_dir)
{
   bool result = false;
   const ui_browser_window_t *browser =
      FUNC5();

   if (browser)
   {
      ui_browser_window_state_t browser_state;

      /* These need to be big enough to hold the
       * path/name of any file the user may select.
       * FIXME: We should really handle the
       * error case when this isn't big enough. */
      char new_title[PATH_MAX];
      char new_file[32768];

      new_title[0] = '\0';
      new_file[0] = '\0';

      if (!FUNC2(title))
         FUNC3(new_title, title, sizeof(new_title));

      if (filename && *filename)
         FUNC3(new_file, filename, sizeof(new_file));

      /* OPENFILENAME.lpstrFilters is actually const,
       * so this cast should be safe */
      browser_state.filters  = (char*)extensions;
      browser_state.title    = new_title;
      browser_state.startdir = FUNC1(initial_dir);
      browser_state.path     = new_file;
      browser_state.window   = owner;

      result = browser->open(&browser_state);

      if (filename && browser_state.path)
         FUNC3(filename, browser_state.path, filename_size);

      FUNC0(browser_state.startdir);
   }

   return result;
}
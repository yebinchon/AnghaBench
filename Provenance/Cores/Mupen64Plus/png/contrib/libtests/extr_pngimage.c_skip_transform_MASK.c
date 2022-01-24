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
struct display {int options; char* filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFORMATION ; 
 int LOG_SKIPPED ; 
 int SKIP_BUGS ; 
 int /*<<< orphan*/  FUNC0 (struct display*,int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct display *dp, int tr)
   /* Helper to test for a bad combo and log it if it is skipped */
{
   if ((dp->options & SKIP_BUGS) != 0 && FUNC2(tr))
   {
      /* Log this to stdout if logging is on, otherwise just do an information
       * display_log.
       */
      if ((dp->options & LOG_SKIPPED) != 0)
      {
         FUNC3("SKIP: %s transforms ", dp->filename);

         while (tr != 0)
         {
            int next = FUNC1(tr);
            tr &= ~next;

            FUNC3("%s", FUNC5(next));
            if (tr != 0)
               FUNC4('+');
         }

         FUNC4('\n');
      }

      else
         FUNC0(dp, INFORMATION, "%s: skipped known bad combo 0x%x",
            dp->filename, tr);

      return 1; /* skip */
   }

   return 0; /* don't skip */
}
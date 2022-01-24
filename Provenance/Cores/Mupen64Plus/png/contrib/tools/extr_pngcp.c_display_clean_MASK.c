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
struct display {scalar_t__ results; int /*<<< orphan*/ * text_ptr; scalar_t__ num_text; scalar_t__ text_stashed; int /*<<< orphan*/ * output_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct display*) ; 
 int /*<<< orphan*/  FUNC1 (struct display*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct display *dp)
{
   FUNC0(dp);
   FUNC1(dp);
   dp->output_file = NULL;

#  if PNG_LIBPNG_VER < 10700 && defined PNG_TEXT_SUPPORTED
      /* This is actually created and used by the write code, but only
       * once; it has to be retained for subsequent writes of the same file.
       */
      if (dp->text_stashed)
      {
         dp->text_stashed = 0;
         dp->num_text = 0;
         free(dp->text_ptr);
         dp->text_ptr = NULL;
      }
#  endif /* pre 1.7 */

   /* leave the filename for error detection */
   dp->results = 0; /* reset for next time */
}
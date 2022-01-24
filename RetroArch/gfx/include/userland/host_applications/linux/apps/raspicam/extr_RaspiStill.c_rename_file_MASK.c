#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* linkname; } ;
typedef  TYPE_1__ RASPISTILL_STATE ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char**,char**,char const*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(RASPISTILL_STATE *state, FILE *output_file,
                        const char *final_filename, const char *use_filename, int frame)
{
   MMAL_STATUS_T status;

   FUNC1(output_file);
   FUNC7(use_filename != NULL && final_filename != NULL);
   if (0 != FUNC4(use_filename, final_filename))
   {
      FUNC8("Could not rename temp file to: %s; %s",
                     final_filename,FUNC5(errno));
   }
   if (state->linkname)
   {
      char *use_link;
      char *final_link;
      status = FUNC0(&final_link, &use_link, state->linkname, frame);

      // Create hard link if possible, symlink otherwise
      if (status != MMAL_SUCCESS
            || (0 != FUNC3(final_filename, use_link)
                &&  0 != FUNC6(final_filename, use_link))
            || 0 != FUNC4(use_link, final_link))
      {
         FUNC8("Could not link as filename: %s; %s",
                        state->linkname,FUNC5(errno));
      }
      if (use_link) FUNC2(use_link);
      if (final_link) FUNC2(final_link);
   }
}
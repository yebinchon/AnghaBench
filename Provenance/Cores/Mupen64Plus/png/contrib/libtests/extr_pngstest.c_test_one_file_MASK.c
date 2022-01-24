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
typedef  int png_uint_32 ;
typedef  int /*<<< orphan*/  format_list ;
typedef  int /*<<< orphan*/  Image ;

/* Variables and functions */
 int NO_RESEED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(const char *file_name, format_list *formats, png_uint_32 opts,
   int stride_extra, int log_pass)
{
   int result;
   Image image;

   if (!(opts & NO_RESEED))
      FUNC8(); /* ensure that the random numbers don't depend on file order */
   FUNC4(&image);
   FUNC3(&image, opts, file_name, stride_extra);
   result = FUNC7(&image);
   if (result)
      result = FUNC9(&image, opts, formats);
   FUNC2(&image);

   /* Ensure that stderr is flushed into any log file */
   FUNC1(stderr);

   if (log_pass)
   {
      if (result)
         FUNC6("PASS:");

      else
         FUNC6("FAIL:");

#     ifndef PNG_SIMPLIFIED_WRITE_SUPPORTED
         FUNC6(" (no write)");
#     endif

      FUNC5(opts);
      FUNC6(" %s\n", file_name);
      /* stdout may not be line-buffered if it is piped to a file, so: */
      FUNC1(stdout);
   }

   else if (!result)
      FUNC0(1);

   return result;
}
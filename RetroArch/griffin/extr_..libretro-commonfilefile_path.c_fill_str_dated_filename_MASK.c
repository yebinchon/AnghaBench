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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  format ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,size_t) ; 
 struct tm* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,struct tm const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(char *out_filename,
      const char *in_str, const char *ext, size_t size)
{
   char format[256];
   time_t cur_time      = FUNC5(NULL);
   const struct tm* tm_ = FUNC2(&cur_time);

   format[0]            = '\0';

   if (FUNC4(ext))
   {
      FUNC3(format, sizeof(format), "-%y%m%d-%H%M%S", tm_);
      FUNC1(out_filename, in_str, format, size);
   }
   else
   {
      FUNC3(format, sizeof(format), "-%y%m%d-%H%M%S.", tm_);

      FUNC0(out_filename,
            in_str, format, ext,
            size);
   }
}
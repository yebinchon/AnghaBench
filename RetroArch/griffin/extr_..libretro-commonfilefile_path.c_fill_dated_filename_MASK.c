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

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,struct tm const*) ; 
 size_t FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

size_t FUNC4(char *out_filename,
      const char *ext, size_t size)
{
   time_t       cur_time = FUNC3(NULL);
   const struct tm* tm_  = FUNC0(&cur_time);

   FUNC1(out_filename, size,
         "RetroArch-%m%d-%H%M%S", tm_);
   return FUNC2(out_filename, ext, size);
}
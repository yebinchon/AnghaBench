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
typedef  int /*<<< orphan*/  va_list ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 

int FUNC2(RFILE *stream, const char* format, va_list args)
{
   static char buffer[8 * 1024];
   int64_t num_chars = FUNC1(buffer, format, args);

   if (num_chars < 0)
      return -1;
   else if (num_chars == 0)
      return 0;

   return (int)FUNC0(stream, buffer, num_chars);
}
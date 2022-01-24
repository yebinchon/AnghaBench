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
typedef  int /*<<< orphan*/  response ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*,char*,size_t) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 scalar_t__ FUNC5 (char*,char const*,char**,int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7( char        *cmd,
                     const char  *property,
                     char        *value,
                     const char  *error_string,
                     int         timeout) {
   char response[128];
   int length;
   char *ret_value;
   int ret = 1;

   FUNC3();
   for (;timeout > 0; timeout -= 10) {
      FUNC4(response, (int)sizeof(response), cmd);
      if (FUNC2(response,error_string)) {
         ret = 1;
         break;
      }
      else if (FUNC5(response, property, &ret_value, &length) &&
               FUNC1(value,ret_value,(size_t)length)==0) {
         ret = 0;
         break;
      }
      FUNC6(10);
   }
   FUNC0();

   return ret;
}
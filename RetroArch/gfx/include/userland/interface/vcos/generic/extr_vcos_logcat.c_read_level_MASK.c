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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  VCOS_LOG_LEVEL_T ;

/* Variables and functions */
 scalar_t__ VCOS_SUCCESS ; 
 scalar_t__ FUNC0 (char*,int,char const**,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(VCOS_LOG_LEVEL_T *level, const char **pstr, char sep)
{
   char buf[16];
   int ret = 1;
   if (FUNC0(buf,sizeof(buf),pstr,sep))
   {
      if (FUNC2(buf,level) != VCOS_SUCCESS)
      {
         FUNC1("Invalid trace level '%s'\n", buf);
         ret = 0;
      }
   }
   else
   {
      ret = 0;
   }
   return ret;
}
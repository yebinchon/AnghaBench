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

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(int *err, char *buf, size_t buflen)
{
   /* not really threadsafe! */
   const char *errmsg = FUNC0();

   FUNC2(buflen > 0);

   if (errmsg)
   {
      *err = -1;
      FUNC1(buf, errmsg, buflen);
      buf[buflen-1] = '\0';
   }
   else
   {
      *err = 0;
      buf[0] = '\0';
   }
   return 0;
}
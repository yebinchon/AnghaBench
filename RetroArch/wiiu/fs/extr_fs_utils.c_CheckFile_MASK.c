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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  dirnoslash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char*,char) ; 

int FUNC5(const char * filepath)
{
   struct stat filestat;
   char *notRoot        = NULL;

   if (!filepath)
      return 0;

   char dirnoslash[FUNC3(filepath)+2];

   FUNC0(dirnoslash, sizeof(dirnoslash), "%s", filepath);

   while(dirnoslash[FUNC3(dirnoslash)-1] == '/')
      dirnoslash[FUNC3(dirnoslash)-1] = '\0';

   notRoot = FUNC4(dirnoslash, '/');
   if (!notRoot)
      FUNC2(dirnoslash, "/");

   if (FUNC1(dirnoslash, &filestat) == 0)
      return 1;

   return 0;
}
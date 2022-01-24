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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 

int FUNC4(const char *filename)
{
   FILE *fp;
   int status;

   //use a second set of savestates for movies
   filename = FUNC0(filename);
   if (!filename)
      return -1;

   if ((fp = FUNC3(filename, "wb")) == NULL)
      return -1;

   status = FUNC1(fp);
   FUNC2(fp);

   return status;
}
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
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC2(
      char *metadata_line, char *value, size_t len)
{
   char *start = NULL;
   char *end   = NULL;

   start = FUNC0(metadata_line, '\"');

   if (!start)
      return;

   start++;
   end = FUNC0(start, '\"');

   if (!end)
      return;

   *end = '\0';
   FUNC1(value, start, len);
}
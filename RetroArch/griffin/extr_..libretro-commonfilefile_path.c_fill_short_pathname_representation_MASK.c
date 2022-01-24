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
typedef  int /*<<< orphan*/  path_short ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 size_t FUNC2 (char*,char*,size_t) ; 

size_t FUNC3(char* out_rep,
      const char *in_path, size_t size)
{
   char path_short[PATH_MAX_LENGTH];

   path_short[0] = '\0';

   FUNC0(path_short, FUNC1(in_path), "",
            sizeof(path_short));

   return FUNC2(out_rep, path_short, size);
}
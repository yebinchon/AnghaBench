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
typedef  int /*<<< orphan*/  tmp_path ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char) ; 

void FUNC4(char *out_path, const char *in_path,
      const char *replace, size_t size)
{
   char tmp_path[PATH_MAX_LENGTH];
   char *tok                      = NULL;

   tmp_path[0] = '\0';

   FUNC2(tmp_path, in_path, sizeof(tmp_path));
   if ((tok = (char*)FUNC3(FUNC1(tmp_path), '.')))
      *tok = '\0';

   FUNC0(out_path, tmp_path, replace, size);
}
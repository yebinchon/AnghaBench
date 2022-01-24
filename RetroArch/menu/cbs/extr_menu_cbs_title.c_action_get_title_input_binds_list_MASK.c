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
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_INPUT_USER_BINDS ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,unsigned int) ; 

__attribute__((used)) static int FUNC2(const char *path, const char *label,
      unsigned menu_type, char *s, size_t len)
{
   unsigned val = (((unsigned)path[0]) - 49) + 1;
   FUNC1(s, len, FUNC0(MENU_ENUM_LABEL_VALUE_INPUT_USER_BINDS), val);
   return 0;
}
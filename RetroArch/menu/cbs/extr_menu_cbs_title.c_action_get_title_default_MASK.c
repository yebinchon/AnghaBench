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
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_SELECT_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC4(const char *path, const char *label,
      unsigned menu_type, char *s, size_t len)
{
   FUNC3(s, FUNC0(MENU_ENUM_LABEL_VALUE_SELECT_FILE), len);
   FUNC2(s, " ", len);
   if (!FUNC1(path))
      FUNC2(s, path, len);
   return 0;
}
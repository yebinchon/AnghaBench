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
 int /*<<< orphan*/  ACTION_OK_DL_CONTENT_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FAVORITES ; 
 int FUNC0 (char const*,char const*,int /*<<< orphan*/ ,unsigned int,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   return FUNC0(path, path,
         FUNC1(MENU_ENUM_LABEL_FAVORITES),
         type, idx,
         entry_idx, ACTION_OK_DL_CONTENT_LIST);
}
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
 int /*<<< orphan*/  FILEBROWSER_SELECT_FONT ; 
 int FUNC0 (char const*,char const*,unsigned int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   FUNC1(FILEBROWSER_SELECT_FONT);
   return FUNC0(path, label, type, idx, entry_idx);
}
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
 int /*<<< orphan*/  CMD_EVENT_RECORD_DEINIT ; 
 int /*<<< orphan*/  CMD_EVENT_RESUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   FUNC0(CMD_EVENT_RECORD_DEINIT, NULL);
   return FUNC1(CMD_EVENT_RESUME);
}
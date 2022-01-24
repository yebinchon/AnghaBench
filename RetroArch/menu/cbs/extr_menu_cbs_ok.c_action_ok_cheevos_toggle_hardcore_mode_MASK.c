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
 int /*<<< orphan*/  CMD_EVENT_CHEEVOS_HARDCORE_MODE_TOGGLE ; 
 int /*<<< orphan*/  CMD_EVENT_RESUME ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int rcheevos_hardcore_paused ; 

__attribute__((used)) static int FUNC1(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
#ifdef HAVE_CHEEVOS
   rcheevos_hardcore_paused = !rcheevos_hardcore_paused;
#endif
   FUNC0(CMD_EVENT_CHEEVOS_HARDCORE_MODE_TOGGLE);
   return FUNC0(CMD_EVENT_RESUME);
}
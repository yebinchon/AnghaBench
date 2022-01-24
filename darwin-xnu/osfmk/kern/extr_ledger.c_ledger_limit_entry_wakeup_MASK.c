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
typedef  int /*<<< orphan*/  uint32_t ;
struct ledger_entry {int le_flags; } ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int LF_CALLED_BACK ; 
 int LF_WAKE_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ledger_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct ledger_entry *le)
{
	uint32_t flags;

	if (!FUNC1(le)) {
		flags = FUNC0(&le->le_flags, LF_CALLED_BACK);

		while (le->le_flags & LF_WAKE_NEEDED) {
			FUNC0(&le->le_flags, LF_WAKE_NEEDED);
			FUNC2((event_t)le);
		}
	}
}
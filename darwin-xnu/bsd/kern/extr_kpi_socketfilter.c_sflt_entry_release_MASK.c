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
struct socket_filter_entry {struct socket_filter_entry* sfe_next_oncleanup; int /*<<< orphan*/  sfe_refcount; } ;
typedef  int SInt32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  sflt_cleanup_thread ; 
 struct socket_filter_entry* sock_filter_cleanup_entries ; 
 int /*<<< orphan*/  sock_filter_cleanup_lock ; 
 int /*<<< orphan*/ * sock_filter_cleanup_thread ; 
 int /*<<< orphan*/  FUNC5 (struct socket_filter_entry**) ; 

__attribute__((used)) static void
FUNC6(struct socket_filter_entry *entry)
{
	SInt32 old = FUNC0(&entry->sfe_refcount);
	if (old == 1) {
		/* That was the last reference */

		/* Take the cleanup lock */
		FUNC2(sock_filter_cleanup_lock);

		/* Put this item on the cleanup list */
		entry->sfe_next_oncleanup = sock_filter_cleanup_entries;
		sock_filter_cleanup_entries = entry;

		/* If the item is the first item in the list */
		if (entry->sfe_next_oncleanup == NULL) {
			if (sock_filter_cleanup_thread == NULL) {
				/* Create a thread */
				FUNC1(sflt_cleanup_thread,
				    NULL, &sock_filter_cleanup_thread);
			} else {
				/* Wakeup the thread */
				FUNC5(&sock_filter_cleanup_entries);
			}
		}

		/* Drop the cleanup lock */
		FUNC3(sock_filter_cleanup_lock);
	} else if (old <= 0) {
		FUNC4("sflt_entry_release - sfe_refcount (%d) <= 0\n",
		    (int)old);
		/* NOTREACHED */
	}
}
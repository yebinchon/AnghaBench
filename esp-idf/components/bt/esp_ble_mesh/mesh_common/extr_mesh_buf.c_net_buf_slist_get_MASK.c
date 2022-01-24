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
struct net_buf {int flags; struct net_buf* frags; } ;
typedef  struct net_buf sys_slist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_buf*) ; 
 int NET_BUF_FRAGS ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (struct net_buf*) ; 

struct net_buf *FUNC4(sys_slist_t *list)
{
    struct net_buf *buf, *frag;
    unsigned int key;

    FUNC0(list);

    key = FUNC1();
    buf = (void *)FUNC3(list);
    FUNC2(key);

    if (!buf) {
        return NULL;
    }

    /* Get any fragments belonging to this buffer */
    for (frag = buf; (frag->flags & NET_BUF_FRAGS); frag = frag->frags) {
        key = FUNC1();
        frag->frags = (void *)FUNC3(list);
        FUNC2(key);

        FUNC0(frag->frags);

        /* The fragments flag is only for list-internal usage */
        frag->flags &= ~NET_BUF_FRAGS;
    }

    /* Mark the end of the fragment list */
    frag->frags = NULL;

    return buf;
}
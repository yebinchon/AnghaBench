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
struct net_buf {int /*<<< orphan*/  node; int /*<<< orphan*/  flags; struct net_buf* frags; } ;
typedef  struct net_buf sys_slist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_buf*) ; 
 int /*<<< orphan*/  NET_BUF_FRAGS ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_buf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(sys_slist_t *list, struct net_buf *buf)
{
    struct net_buf *tail;
    unsigned int key;

    FUNC0(list);
    FUNC0(buf);

    for (tail = buf; tail->frags; tail = tail->frags) {
        tail->flags |= NET_BUF_FRAGS;
    }

    key = FUNC1();
    FUNC3(list, &buf->node, &tail->node);
    FUNC2(key);
}
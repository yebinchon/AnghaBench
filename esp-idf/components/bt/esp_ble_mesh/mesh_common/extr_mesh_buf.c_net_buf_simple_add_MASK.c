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
typedef  void u8_t ;
struct net_buf_simple {size_t len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct net_buf_simple*,size_t) ; 
 void* FUNC2 (struct net_buf_simple*) ; 
 size_t FUNC3 (struct net_buf_simple*) ; 

void *FUNC4(struct net_buf_simple *buf, size_t len)
{
    u8_t *tail = FUNC2(buf);

    FUNC1("buf %p len %u", buf, len);

    FUNC0(FUNC3(buf) >= len);

    buf->len += len;
    return tail;
}
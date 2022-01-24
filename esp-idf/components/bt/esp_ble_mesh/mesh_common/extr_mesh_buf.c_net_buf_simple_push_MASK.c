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
struct net_buf_simple {size_t data; size_t len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct net_buf_simple*,size_t) ; 
 size_t FUNC2 (struct net_buf_simple*) ; 

void *FUNC3(struct net_buf_simple *buf, size_t len)
{
    FUNC1("buf %p len %u", buf, len);

    FUNC0(FUNC2(buf) >= len);

    buf->data -= len;
    buf->len += len;
    return buf->data;
}
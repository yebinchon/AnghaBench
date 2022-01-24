#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int peek_char; int (* rx_func ) (int) ;} ;

/* Variables and functions */
 int NONE ; 
 TYPE_1__** s_ctx ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(int fd)
{
    /* return character from peek buffer, if it is there */
    if (s_ctx[fd]->peek_char != NONE) {
        int c = s_ctx[fd]->peek_char;
        s_ctx[fd]->peek_char = NONE;
        return c;
    }
    return s_ctx[fd]->rx_func(fd);
}
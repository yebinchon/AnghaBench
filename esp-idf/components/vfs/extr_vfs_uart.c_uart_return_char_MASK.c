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
struct TYPE_2__ {int peek_char; } ;

/* Variables and functions */
 int NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__** s_ctx ; 

__attribute__((used)) static void FUNC1(int fd, int c)
{
    FUNC0(s_ctx[fd]->peek_char == NONE);
    s_ctx[fd]->peek_char = c;
}
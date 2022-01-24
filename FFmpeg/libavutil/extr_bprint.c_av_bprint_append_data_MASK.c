#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ len; scalar_t__ str; } ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 
 unsigned int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char const*,unsigned int) ; 

void FUNC5(AVBPrint *buf, const char *data, unsigned size)
{
    unsigned room, real_n;

    while (1) {
        room = FUNC3(buf);
        if (size < room)
            break;
        if (FUNC1(buf, size))
            break;
    }
    if (room) {
        real_n = FUNC0(size, room - 1);
        FUNC4(buf->str + buf->len, data, real_n);
    }
    FUNC2(buf, size);
}
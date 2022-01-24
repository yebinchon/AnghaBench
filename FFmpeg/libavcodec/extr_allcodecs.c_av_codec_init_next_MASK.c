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
struct TYPE_2__ {struct TYPE_2__* next; } ;
typedef  TYPE_1__ AVCodec ;

/* Variables and functions */
 scalar_t__ FUNC0 (void**) ; 

__attribute__((used)) static void FUNC1(void)
{
    AVCodec *prev = NULL, *p;
    void *i = 0;
    while ((p = (AVCodec*)FUNC0(&i))) {
        if (prev)
            prev->next = p;
        prev = p;
    }
}
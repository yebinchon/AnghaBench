#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ VP56Context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned FUNC2(VP56Context *s)
{
    unsigned val = FUNC0(&s->gb, 2);
    if (val == 2)
        val += FUNC0(&s->gb, 2);
    else if (val == 3) {
        val = FUNC1(&s->gb) << 2;
        val = 6+val + FUNC0(&s->gb, 2+val);
    }
    return val;
}
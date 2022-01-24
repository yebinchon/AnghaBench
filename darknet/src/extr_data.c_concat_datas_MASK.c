#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 

data FUNC2(data *d, int n)
{
    int i;
    data out = {0};
    for(i = 0; i < n; ++i){
        data new = FUNC0(d[i], out);
        FUNC1(out);
        out = new;
    }
    return out;
}
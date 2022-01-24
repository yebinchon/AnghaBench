#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  vals; } ;
struct TYPE_4__ {TYPE_2__ y; TYPE_2__ X; int /*<<< orphan*/  shallow; } ;
typedef  TYPE_1__ data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 

void FUNC2(data d)
{
    if(!d.shallow){
        FUNC1(d.X);
        FUNC1(d.y);
    }else{
        FUNC0(d.X.vals);
        FUNC0(d.y.vals);
    }
}
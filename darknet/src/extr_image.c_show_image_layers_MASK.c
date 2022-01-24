#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int c; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 TYPE_1__ FUNC1 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int) ; 

void FUNC4(image p, char *name)
{
    int i;
    char buff[256];
    for(i = 0; i < p.c; ++i){
        FUNC3(buff, "%s - Layer %d", name, i);
        image layer = FUNC1(p, i);
        FUNC2(layer, buff, 1);
        FUNC0(layer);
    }
}
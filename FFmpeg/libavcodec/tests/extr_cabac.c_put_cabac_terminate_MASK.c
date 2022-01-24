#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int range; int low; int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ CABACContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(CABACContext *c, int bit){
    c->range -= 2;

    if(!bit){
        FUNC5(c);
    }else{
        c->low += c->range;
        c->range= 2;

        FUNC5(c);

        FUNC0(c->low <= 0x1FF);
        FUNC4(c, c->low>>9);
        FUNC2(&c->pb, 2, ((c->low>>7)&3)|1);

        FUNC1(&c->pb); //FIXME FIXME FIXME XXX wrong
    }

    return (FUNC3(&c->pb)+7)>>3;
}
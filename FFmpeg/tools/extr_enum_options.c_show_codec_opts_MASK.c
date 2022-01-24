#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* class_name; } ;
struct TYPE_6__ {TYPE_2__* priv_class; } ;
typedef  TYPE_1__ AVCodec ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(void)
{
    AVCodec *c = NULL;

    FUNC2("@section Generic codec AVOptions\n");
    FUNC3(FUNC1());

    FUNC2("@section Codec-specific AVOptions\n");
    while ((c = FUNC0(c))) {
        if (!c->priv_class)
            continue;
        FUNC2("@subsection %s AVOptions\n", c->priv_class->class_name);
        FUNC3(c->priv_class);
    }
}
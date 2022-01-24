#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* class_name; } ;
struct TYPE_8__ {TYPE_3__* priv_class; } ;
struct TYPE_7__ {TYPE_3__* priv_class; } ;
typedef  TYPE_1__ AVOutputFormat ;
typedef  TYPE_2__ AVInputFormat ;

/* Variables and functions */
 TYPE_2__* FUNC0 (void**) ; 
 TYPE_1__* FUNC1 (void**) ; 
 TYPE_3__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(void)
{
    const AVInputFormat *iformat = NULL;
    const AVOutputFormat *oformat = NULL;
    void *iformat_opaque = NULL;
    void *oformat_opaque = NULL;

    FUNC3("@section Generic format AVOptions\n");
    FUNC4(FUNC2());

    FUNC3("@section Format-specific AVOptions\n");
    while ((iformat = FUNC0(&iformat_opaque))) {
        if (!iformat->priv_class)
            continue;
        FUNC3("@subsection %s AVOptions\n", iformat->priv_class->class_name);
        FUNC4(iformat->priv_class);
    }
    while ((oformat = FUNC1(&oformat_opaque))) {
        if (!oformat->priv_class)
            continue;
        FUNC3("@subsection %s AVOptions\n", oformat->priv_class->class_name);
        FUNC4(oformat->priv_class);
    }
}
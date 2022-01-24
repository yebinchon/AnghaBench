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
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ AVBitStreamFilter ;

/* Variables and functions */
 TYPE_1__* FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int FUNC2(void *optctx, const char *opt, const char *arg)
{
    const AVBitStreamFilter *bsf = NULL;
    void *opaque = NULL;

    FUNC1("Bitstream filters:\n");
    while ((bsf = FUNC0(&opaque)))
        FUNC1("%s\n", bsf->name);
    FUNC1("\n");
    return 0;
}
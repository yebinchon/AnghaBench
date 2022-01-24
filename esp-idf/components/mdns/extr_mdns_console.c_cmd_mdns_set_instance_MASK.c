#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* instance; int /*<<< orphan*/  end; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** sval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__ mdns_set_instance_args ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(int argc, char** argv)
{
    int nerrors = FUNC1(argc, argv, (void**) &mdns_set_instance_args);
    if (nerrors != 0) {
        FUNC2(stderr, mdns_set_instance_args.end, argv[0]);
        return 1;
    }

    if (mdns_set_instance_args.instance->sval[0] == NULL) {
        FUNC4("ERROR: Bad arguments!\n");
        return 1;
    }

    FUNC0( FUNC3(mdns_set_instance_args.instance->sval[0]) );
    return 0;
}
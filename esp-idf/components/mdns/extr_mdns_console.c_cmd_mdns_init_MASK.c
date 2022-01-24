#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* instance; TYPE_1__* hostname; int /*<<< orphan*/  end; } ;
struct TYPE_5__ {char** sval; } ;
struct TYPE_4__ {char** sval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_3__ mdns_init_args ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(int argc, char** argv)
{
    int nerrors = FUNC1(argc, argv, (void**) &mdns_init_args);
    if (nerrors != 0) {
        FUNC2(stderr, mdns_init_args.end, argv[0]);
        return 1;
    }

    FUNC0( FUNC4() );

    if (mdns_init_args.hostname->sval[0]) {
        FUNC0( FUNC3(mdns_init_args.hostname->sval[0]) );
        FUNC6("MDNS: Hostname: %s\n", mdns_init_args.hostname->sval[0]);
    }

    if (mdns_init_args.instance->sval[0]) {
        FUNC0( FUNC5(mdns_init_args.instance->sval[0]) );
        FUNC6("MDNS: Instance: %s\n", mdns_init_args.instance->sval[0]);
    }

    return 0;
}
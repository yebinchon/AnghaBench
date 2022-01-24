#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mdns_txt_item_t ;
struct TYPE_8__ {TYPE_3__* txt; TYPE_2__* proto; TYPE_1__* service; int /*<<< orphan*/  end; } ;
struct TYPE_7__ {scalar_t__ count; int /*<<< orphan*/  sval; } ;
struct TYPE_6__ {int /*<<< orphan*/ * sval; } ;
struct TYPE_5__ {int /*<<< orphan*/ * sval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int,char**,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_4__ mdns_txt_replace_args ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(int argc, char** argv)
{
    mdns_txt_item_t * items = NULL;
    int nerrors = FUNC2(argc, argv, (void**) &mdns_txt_replace_args);
    if (nerrors != 0) {
        FUNC3(stderr, mdns_txt_replace_args.end, argv[0]);
        return 1;
    }

    if (!mdns_txt_replace_args.service->sval[0] || !mdns_txt_replace_args.proto->sval[0]) {
        FUNC6("ERROR: Bad arguments!\n");
        return 1;
    }

    if (mdns_txt_replace_args.txt->count) {
        items = FUNC1(mdns_txt_replace_args.txt->sval, mdns_txt_replace_args.txt->count);
        if (!items) {
            FUNC6("ERROR: No Memory!\n");
            return 1;

        }
    }
    FUNC0( FUNC5(mdns_txt_replace_args.service->sval[0], mdns_txt_replace_args.proto->sval[0], items, mdns_txt_replace_args.txt->count) );
    FUNC4(items);
    return 0;
}
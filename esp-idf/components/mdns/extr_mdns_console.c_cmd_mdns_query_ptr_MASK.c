#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mdns_result_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_10__ {TYPE_4__* max_results; TYPE_3__* timeout; TYPE_2__* proto; TYPE_1__* service; int /*<<< orphan*/  end; } ;
struct TYPE_9__ {int* ival; } ;
struct TYPE_8__ {int* ival; } ;
struct TYPE_7__ {char** sval; } ;
struct TYPE_6__ {char** sval; } ;

/* Variables and functions */
 int FUNC0 (int,char**,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char const*,int,int,int /*<<< orphan*/ **) ; 
 TYPE_5__ mdns_query_ptr_args ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(int argc, char** argv)
{
    int nerrors = FUNC0(argc, argv, (void**) &mdns_query_ptr_args);
    if (nerrors != 0) {
        FUNC1(stderr, mdns_query_ptr_args.end, argv[0]);
        return 1;
    }

    const char * service = mdns_query_ptr_args.service->sval[0];
    const char * proto = mdns_query_ptr_args.proto->sval[0];
    int timeout = mdns_query_ptr_args.timeout->ival[0];
    int max_results = mdns_query_ptr_args.max_results->ival[0];

    if (timeout <= 0) {
        timeout = 5000;
    }

    if (max_results <= 0 || max_results > 255) {
        max_results = 255;
    }

    FUNC5("Query PTR: %s.%s.local, Timeout: %d, Max Results: %d\n", service, proto, timeout, max_results);

    mdns_result_t * results = NULL;
    esp_err_t err = FUNC3(service, proto, timeout, max_results,  &results);
    if (err) {
        FUNC5("ERROR: Query Failed\n");
        return 1;
    }
    if (!results) {
        FUNC5("No results found!\n");
        return 0;
    }

    FUNC2(results);
    FUNC4(results);
    return 0;
}
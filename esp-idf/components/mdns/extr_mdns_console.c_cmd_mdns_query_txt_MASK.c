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
struct TYPE_10__ {TYPE_4__* timeout; TYPE_3__* proto; TYPE_2__* service; TYPE_1__* instance; int /*<<< orphan*/  end; } ;
struct TYPE_9__ {int* ival; } ;
struct TYPE_8__ {char** sval; } ;
struct TYPE_7__ {char** sval; } ;
struct TYPE_6__ {char** sval; } ;

/* Variables and functions */
 int FUNC0 (int,char**,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char const*,char const*,int,int /*<<< orphan*/ **) ; 
 TYPE_5__ mdns_query_txt_args ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(int argc, char** argv)
{
    int nerrors = FUNC0(argc, argv, (void**) &mdns_query_txt_args);
    if (nerrors != 0) {
        FUNC1(stderr, mdns_query_txt_args.end, argv[0]);
        return 1;
    }

    const char * instance = mdns_query_txt_args.instance->sval[0];
    const char * service = mdns_query_txt_args.service->sval[0];
    const char * proto = mdns_query_txt_args.proto->sval[0];
    int timeout = mdns_query_txt_args.timeout->ival[0];

    FUNC5("Query TXT: %s.%s.%s.local, Timeout: %d\n", instance, service, proto, timeout);

    if (timeout <= 0) {
        timeout = 5000;
    }

    mdns_result_t * results = NULL;
    esp_err_t err = FUNC4(instance, service, proto, timeout,  &results);
    if (err) {
        FUNC5("ERROR: Query Failed\n");
        return 1;
    }
    if (!results) {
        FUNC5("No results found!\n");
        return 0;
    }

    FUNC2(results);
    FUNC3(results);
    return 0;
}
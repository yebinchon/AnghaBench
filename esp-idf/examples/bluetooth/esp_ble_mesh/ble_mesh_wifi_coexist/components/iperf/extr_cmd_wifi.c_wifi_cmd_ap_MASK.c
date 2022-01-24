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
struct TYPE_6__ {TYPE_2__* password; TYPE_1__* ssid; int /*<<< orphan*/  end; } ;
struct TYPE_5__ {int /*<<< orphan*/ * sval; } ;
struct TYPE_4__ {int /*<<< orphan*/ * sval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_3__ ap_args ; 
 int FUNC1 (int,char**,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int argc, char **argv)
{
    int nerrors = FUNC1(argc, argv, (void **) &ap_args);

    if (nerrors != 0) {
        FUNC2(stderr, ap_args.end, argv[0]);
        return 1;
    }

    FUNC3(ap_args.ssid->sval[0], ap_args.password->sval[0]);
    FUNC0(TAG, "AP mode, %s %s", ap_args.ssid->sval[0], ap_args.password->sval[0]);
    return 0;
}
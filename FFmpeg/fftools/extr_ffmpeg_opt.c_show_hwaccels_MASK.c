#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int AV_HWDEVICE_TYPE_NONE ; 
 char* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 TYPE_1__* hwaccels ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(void *optctx, const char *opt, const char *arg)
{
    enum AVHWDeviceType type = AV_HWDEVICE_TYPE_NONE;
    int i;

    FUNC2("Hardware acceleration methods:\n");
    while ((type = FUNC1(type)) !=
           AV_HWDEVICE_TYPE_NONE)
        FUNC2("%s\n", FUNC0(type));
    for (i = 0; hwaccels[i].name; i++)
        FUNC2("%s\n", hwaccels[i].name);
    FUNC2("\n");
    return 0;
}
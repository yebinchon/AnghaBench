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
struct TYPE_2__ {char** bindaddr; int /*<<< orphan*/  port; scalar_t__ bindaddr_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int /*<<< orphan*/ ) ; 

void FUNC2(char *title) {
#ifdef USE_SETPROCTITLE
    setproctitle("%s %s:%d",
        title,
        server.bindaddr_count ? server.bindaddr[0] : "*",
        server.port);
#else
    FUNC0(title);
#endif
}
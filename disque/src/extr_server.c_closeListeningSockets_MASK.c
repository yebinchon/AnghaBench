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
struct TYPE_2__ {int ipfd_count; int* ipfd; int sofd; int cfd_count; int* cfd; scalar_t__ unixsocket; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(int unlink_unix_socket) {
    int j;

    for (j = 0; j < server.ipfd_count; j++) FUNC0(server.ipfd[j]);
    if (server.sofd != -1) FUNC0(server.sofd);
    for (j = 0; j < server.cfd_count; j++) FUNC0(server.cfd[j]);
    if (unlink_unix_socket && server.unixsocket) {
        FUNC1(LL_NOTICE,"Removing the unix socket file.");
        FUNC2(server.unixsocket); /* don't care if this fails */
    }
}
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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct hostent {scalar_t__* h_addr_list; } ;
typedef  int /*<<< orphan*/  address ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  client_enabled ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hostent* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int sd ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(char *hostname, int port) {
    if (!client_enabled) {
        return;
    }
    struct hostent *host;
    struct sockaddr_in address;
    if ((host = FUNC2(hostname)) == 0) {
        FUNC5("gethostbyname");
        FUNC1(1);
    }
    FUNC4(&address, 0, sizeof(address));
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = ((struct in_addr *)(host->h_addr_list[0]))->s_addr;
    address.sin_port = FUNC3(port);
    if ((sd = FUNC6(AF_INET, SOCK_STREAM, 0)) == -1) {
        FUNC5("socket");
        FUNC1(1);
    }
    if (FUNC0(sd, (struct sockaddr *)&address, sizeof(address)) == -1) {
        FUNC5("connect");
        FUNC1(1);
    }
}
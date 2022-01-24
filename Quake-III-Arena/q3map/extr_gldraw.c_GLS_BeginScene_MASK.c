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
typedef  int /*<<< orphan*/  address ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GLSERV_PORT ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,struct sockaddr*,int) ; 
 int draw_socket ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ qtrue ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ wins_init ; 

void FUNC7 (void)
{
	WSADATA	winsockdata;
	WORD	wVersionRequested; 
	struct sockaddr_in	address;
	int		r;

	if (!wins_init)
	{
		wins_init = qtrue;

		wVersionRequested = FUNC1(1, 1); 

		r = FUNC2 (FUNC1(1, 1), &winsockdata);

		if (r)
			FUNC0 ("Winsock initialization failed.");

	}

	// connect a socket to the server

	draw_socket = FUNC6 (PF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (draw_socket == -1)
		FUNC0 ("draw_socket failed");

	address.sin_family = AF_INET;
	address.sin_addr.s_addr = FUNC5(INADDR_LOOPBACK);
	address.sin_port = GLSERV_PORT;
	r = FUNC4 (draw_socket, (struct sockaddr *)&address, sizeof(address));
	if (r == -1)
	{
		FUNC3 (draw_socket);
		draw_socket = 0;
	}
}
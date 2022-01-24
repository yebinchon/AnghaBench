#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* socket_t ;
struct TYPE_5__ {int /*<<< orphan*/  so_usecount; int /*<<< orphan*/  so_retaincnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

void
FUNC2(socket_t sock)
{
	if (sock == NULL)
		return;

	FUNC0(sock, 1);
	sock->so_retaincnt++;
	sock->so_usecount++;	/* add extra reference for holding the socket */
	FUNC1(sock, 1);
}
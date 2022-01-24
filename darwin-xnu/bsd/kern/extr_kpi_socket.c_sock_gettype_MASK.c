#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* socket_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_7__ {int so_type; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

errno_t
FUNC4(socket_t sock, int *outDomain, int *outType, int *outProtocol)
{
	FUNC2(sock, 1);
	if (outDomain != NULL)
		*outDomain = FUNC0(sock);
	if (outType != NULL)
		*outType = sock->so_type;
	if (outProtocol != NULL)
		*outProtocol = FUNC1(sock);
	FUNC3(sock, 1);
	return (0);
}
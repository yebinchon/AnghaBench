#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int IsRawSocket; int RawIP_HeaderIncludeFlag; int /*<<< orphan*/  socket; } ;
typedef  TYPE_1__ SOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_HDRINCL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

void FUNC2(SOCK *s, bool enable)
{
	UINT value = FUNC0(enable);
	if (s == NULL || s->IsRawSocket == false)
	{
		return;
	}

	(void)FUNC1(s->socket, IPPROTO_IP, IP_HDRINCL, (char *)&value, sizeof(value));

	s->RawIP_HeaderIncludeFlag = enable;
}
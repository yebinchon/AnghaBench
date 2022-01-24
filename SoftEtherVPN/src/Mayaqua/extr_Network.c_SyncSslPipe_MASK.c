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
typedef  int UINT ;
struct TYPE_3__ {int IsDisconnected; int /*<<< orphan*/  SslInOut; int /*<<< orphan*/  RawOut; int /*<<< orphan*/  RawIn; } ;
typedef  TYPE_1__ SSL_PIPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

bool FUNC2(SSL_PIPE *s)
{
	UINT i;
	// Validate arguments
	if (s == NULL || s->IsDisconnected)
	{
		return false;
	}

	for (i = 0;i < 2;i++)
	{
		if (FUNC1(s->RawIn, true, false) == false)
		{
			s->IsDisconnected = true;
			FUNC0("SyncSslPipe: s->RawIn error.\n");
			return false;
		}

		if (FUNC1(s->RawOut, false, true) == false)
		{
			s->IsDisconnected = true;
			FUNC0("SyncSslPipe: s->RawOut error.\n");
			return false;
		}

		if (FUNC1(s->SslInOut, true, true) == false)
		{
			s->IsDisconnected = true;
			FUNC0("SyncSslPipe: s->SslInOut error.\n");
			return false;
		}
	}

	return true;
}
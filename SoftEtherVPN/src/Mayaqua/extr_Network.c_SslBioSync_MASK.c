#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_7__ {int size; } ;
struct TYPE_6__ {int IsDisconnected; int /*<<< orphan*/  RecvFifo; int /*<<< orphan*/  bio; TYPE_3__* SendFifo; } ;
typedef  TYPE_1__ SSL_BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WHERE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool FUNC10(SSL_BIO *b, bool sync_send, bool sync_recv)
{
	// Validate arguments
	if (b == NULL)
	{
		return false;
	}

	if (b->IsDisconnected)
	{
		return false;
	}

	// Write the contents of the SendFifo to the BIO
	if (sync_send)
	{
		while (b->SendFifo->size >= 1)
		{
			int r = FUNC2(b->bio, FUNC7(b->SendFifo), FUNC6(b->SendFifo));

			if (r == 0)
			{
				b->IsDisconnected = true;
				WHERE;
				return false;
			}
			else
			{
				if (r < 0)
				{
					if (FUNC1(b->bio))
					{
						break;
					}
					else
					{
						b->IsDisconnected = true;
						WHERE;
						return false;
					}
				}
				else
				{
					FUNC8(b->SendFifo, NULL, (UINT)r);
				}
			}
		}
	}

	// Save to the RecvFifo by reading from the BIO
	if (sync_recv)
	{
		while (true)
		{
			UCHAR tmp[4096];
			int r;

			r = FUNC0(b->bio, tmp, sizeof(tmp));

			if (r == 0)
			{
				b->IsDisconnected = true;
				WHERE;
				return false;
			}
			else
			{
				if (r < 0)
				{
					if (FUNC1(b->bio))
					{
						break;
					}
					else
					{
						b->IsDisconnected = true;
						WHERE;
						FUNC3("OpenSSL Error: %s\n", FUNC4(FUNC5(), NULL));
						return false;
					}
				}
				else
				{
					FUNC9(b->RecvFifo, tmp, (UINT)r);
				}
			}
		}
	}

	return true;
}
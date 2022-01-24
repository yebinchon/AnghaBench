#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h ;
struct TYPE_6__ {int /*<<< orphan*/  CertType; } ;
struct TYPE_5__ {int /*<<< orphan*/ * Data; int /*<<< orphan*/  CertType; } ;
typedef  TYPE_1__ IKE_PACKET_CERT_REQUEST_PAYLOAD ;
typedef  TYPE_2__ IKE_CERT_REQUEST_HEADER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

bool FUNC2(IKE_PACKET_CERT_REQUEST_PAYLOAD *t, BUF *b)
{
	IKE_CERT_REQUEST_HEADER h;
	// Validate arguments
	if (t == NULL || b == NULL)
	{
		return false;
	}

	if (FUNC0(b, &h, sizeof(h)) != sizeof(h))
	{
		return false;
	}

	t->CertType = h.CertType;
	t->Data = FUNC1(b);
	if (t->Data == NULL)
	{
		return false;
	}

	return true;
}
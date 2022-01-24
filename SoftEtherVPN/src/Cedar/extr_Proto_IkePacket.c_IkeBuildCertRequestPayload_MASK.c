#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h ;
struct TYPE_7__ {int /*<<< orphan*/  CertType; } ;
struct TYPE_6__ {int /*<<< orphan*/  Data; int /*<<< orphan*/  CertType; } ;
typedef  TYPE_1__ IKE_PACKET_CERT_REQUEST_PAYLOAD ;
typedef  TYPE_2__ IKE_CERT_REQUEST_HEADER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

BUF *FUNC4(IKE_PACKET_CERT_REQUEST_PAYLOAD *t)
{
	IKE_CERT_REQUEST_HEADER h;
	BUF *ret;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	FUNC3(&h, sizeof(h));
	h.CertType = t->CertType;

	ret = FUNC0();
	FUNC1(ret, &h, sizeof(h));
	FUNC2(ret, t->Data);

	return ret;
}
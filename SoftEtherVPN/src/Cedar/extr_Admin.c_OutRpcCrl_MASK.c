#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * Local; int /*<<< orphan*/ * State; int /*<<< orphan*/ * Country; int /*<<< orphan*/ * Unit; int /*<<< orphan*/ * Organization; int /*<<< orphan*/ * CommonName; } ;
struct TYPE_8__ {TYPE_2__* Crl; int /*<<< orphan*/  Key; int /*<<< orphan*/  HubName; } ;
struct TYPE_7__ {int /*<<< orphan*/  DigestSHA1; int /*<<< orphan*/  DigestMD5; TYPE_4__* Name; TYPE_1__* Serial; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ RPC_CRL ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_4__ NAME ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MD5_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 

void FUNC5(PACK *p, RPC_CRL *t)
{
	NAME *n;
	// Validate arguments
	if (p == NULL || t == NULL)
	{
		return;
	}

	FUNC3(p, "HubName", t->HubName);
	FUNC2(p, "Key", t->Key);

	if (t->Crl == NULL)
	{
		return;
	}

	if (t->Crl->Serial != NULL)
	{
		FUNC1(p, "Serial", t->Crl->Serial->data, t->Crl->Serial->size);
	}
	n = t->Crl->Name;
	if (n->CommonName != NULL)
	{
		FUNC4(p, "CommonName", n->CommonName);
	}
	if (n->Organization != NULL)
	{
		FUNC4(p, "Organization", n->Organization);
	}
	if (n->Unit != NULL)
	{
		FUNC4(p, "Unit", n->Unit);
	}
	if (n->Country != NULL)
	{
		FUNC4(p, "Country", n->Country);
	}
	if (n->State != NULL)
	{
		FUNC4(p, "State", n->State);
	}
	if (n->Local != NULL)
	{
		FUNC4(p, "Local", n->Local);
	}
	if (FUNC0(t->Crl->DigestMD5, MD5_SIZE) == false)
	{
		FUNC1(p, "DigestMD5", t->Crl->DigestMD5, MD5_SIZE);
	}
	if (FUNC0(t->Crl->DigestSHA1, SHA1_SIZE) == false)
	{
		FUNC1(p, "DigestSHA1", t->Crl->DigestSHA1, SHA1_SIZE);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_12__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_11__ {void* Local; void* State; void* Country; void* Unit; void* Organization; void* CommonName; } ;
struct TYPE_10__ {TYPE_1__* Crl; int /*<<< orphan*/  Key; int /*<<< orphan*/  HubName; } ;
struct TYPE_9__ {int /*<<< orphan*/  DigestSHA1; int /*<<< orphan*/  DigestMD5; TYPE_3__* Name; int /*<<< orphan*/  Serial; } ;
typedef  TYPE_2__ RPC_CRL ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_3__ NAME ;
typedef  int /*<<< orphan*/  CRL ;
typedef  TYPE_4__ BUF ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int MAX_SIZE ; 
 scalar_t__ MD5_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 void* FUNC10 (int) ; 

void FUNC11(RPC_CRL *t, PACK *p)
{
	BUF *b;
	NAME *n;
	wchar_t tmp[MAX_SIZE];
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC9(t, sizeof(RPC_CRL));
	FUNC7(p, "HubName", t->HubName, sizeof(t->HubName));
	t->Key = FUNC6(p, "Key");
	b = FUNC3(p, "Serial");
	t->Crl = FUNC10(sizeof(CRL));
	if (b != NULL)
	{
		t->Crl->Serial = FUNC2(b->Buf, b->Size);
		FUNC1(b);
	}
	t->Crl->Name = FUNC10(sizeof(NAME));
	n = t->Crl->Name;
	if (FUNC8(p, "CommonName", tmp, sizeof(tmp)))
	{
		n->CommonName = FUNC0(tmp);
	}
	if (FUNC8(p, "Organization", tmp, sizeof(tmp)))
	{
		n->Organization = FUNC0(tmp);
	}
	if (FUNC8(p, "Unit", tmp, sizeof(tmp)))
	{
		n->Unit = FUNC0(tmp);
	}
	if (FUNC8(p, "Country", tmp, sizeof(tmp)))
	{
		n->Country = FUNC0(tmp);
	}
	if (FUNC8(p, "State", tmp, sizeof(tmp)))
	{
		n->State = FUNC0(tmp);
	}
	if (FUNC8(p, "Local", tmp, sizeof(tmp)))
	{
		n->Local = FUNC0(tmp);
	}
	if (FUNC5(p, "DigestMD5") == MD5_SIZE)
	{
		FUNC4(p, "DigestMD5", t->Crl->DigestMD5);
	}
	if (FUNC5(p, "DigestSHA1") == SHA1_SIZE)
	{
		FUNC4(p, "DigestSHA1", t->Crl->DigestSHA1);
	}
}
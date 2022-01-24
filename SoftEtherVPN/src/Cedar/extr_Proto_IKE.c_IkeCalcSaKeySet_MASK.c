#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int UCHAR ;
struct TYPE_24__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_23__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_20__ {int /*<<< orphan*/  CryptoKeySize; int /*<<< orphan*/  Crypto; int /*<<< orphan*/ * Hash; } ;
struct TYPE_22__ {TYPE_1__ TransformSetting; int /*<<< orphan*/  HashSize; int /*<<< orphan*/  SKEYID_e; int /*<<< orphan*/ * CryptoKey; int /*<<< orphan*/  SKEYID; int /*<<< orphan*/  ResponderCookie; int /*<<< orphan*/  InitiatorCookie; TYPE_7__* DhSharedKey; int /*<<< orphan*/  SKEYID_a; int /*<<< orphan*/  SKEYID_d; TYPE_7__* InitiatorRand; TYPE_7__* ResponderRand; int /*<<< orphan*/  Secret; } ;
struct TYPE_21__ {char* Secret; } ;
typedef  TYPE_2__ IKE_SERVER ;
typedef  TYPE_3__ IKE_SA ;
typedef  int /*<<< orphan*/  IKE_HASH ;
typedef  TYPE_4__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 

void FUNC15(IKE_SERVER *ike, IKE_SA *sa, char *secret)
{
	BUF *secret_buf;
	BUF *rand_buf;
	BUF *d_buf, *a_buf, *e_buf;
	UCHAR u;
	IKE_HASH *h;
	char tmp[MAX_SIZE];
	// Validate arguments
	if (ike == NULL || sa == NULL)
	{
		return;
	}

	h = sa->TransformSetting.Hash;

	// Calculation of SKEYID
	FUNC11(sa->Secret, sizeof(sa->Secret), secret == NULL ? ike->Secret : secret);
	secret_buf = FUNC8(sa->Secret);
	rand_buf = FUNC1(sa->ResponderRand);
	FUNC10(rand_buf);
	FUNC0(tmp, sizeof(tmp), rand_buf->Buf, rand_buf->Size);
	FUNC2("ResponderRand: %s\n", tmp);
	FUNC0(tmp, sizeof(tmp), sa->InitiatorRand->Buf, sa->InitiatorRand->Size);
	FUNC2("InitiatorRand: %s\n", tmp);

	FUNC13(rand_buf, sa->InitiatorRand);

	FUNC6(h, sa->SKEYID, secret_buf, rand_buf);

	FUNC0(tmp, sizeof(tmp), sa->SKEYID, sa->HashSize);
	FUNC2("SKEYID: %s\n", tmp);

	// SKEYID_d
	d_buf = FUNC1(sa->DhSharedKey);
	FUNC10(d_buf);
	FUNC14(d_buf, sa->InitiatorCookie);
	FUNC14(d_buf, sa->ResponderCookie);
	u = 0;
	FUNC12(d_buf, &u, 1);
	FUNC5(h, sa->SKEYID_d, sa->SKEYID, sa->HashSize, d_buf->Buf, d_buf->Size);

	FUNC0(tmp, sizeof(tmp), sa->SKEYID_d, sa->HashSize);
	FUNC2("SKEYID_d: %s\n", tmp);

	// SKEYID_a
	a_buf = FUNC9(sa->SKEYID_d, sa->HashSize);
	FUNC10(a_buf);
	FUNC13(a_buf, sa->DhSharedKey);
	FUNC14(a_buf, sa->InitiatorCookie);
	FUNC14(a_buf, sa->ResponderCookie);
	u = 1;
	FUNC12(a_buf, &u, 1);
	FUNC5(h, sa->SKEYID_a, sa->SKEYID, sa->HashSize, a_buf->Buf, a_buf->Size);

	FUNC0(tmp, sizeof(tmp), sa->SKEYID_a, sa->HashSize);
	FUNC2("SKEYID_a: %s\n", tmp);

	// SKEYID_e
	e_buf = FUNC9(sa->SKEYID_a, sa->HashSize);
	FUNC10(e_buf);
	FUNC13(e_buf, sa->DhSharedKey);
	FUNC14(e_buf, sa->InitiatorCookie);
	FUNC14(e_buf, sa->ResponderCookie);
	u = 2;
	FUNC12(e_buf, &u, 1);
	FUNC5(h, sa->SKEYID_e, sa->SKEYID, sa->HashSize, e_buf->Buf, e_buf->Size);

	FUNC0(tmp, sizeof(tmp), sa->SKEYID_e, sa->HashSize);
	FUNC2("SKEYID_e: %s\n", tmp);

	if (sa->CryptoKey != NULL)
	{
		FUNC4(sa->CryptoKey);
	}

	sa->CryptoKey = FUNC7(ike, sa->SKEYID_e, sa->HashSize, sa->TransformSetting.Hash,
		sa->TransformSetting.Crypto, sa->TransformSetting.CryptoKeySize);

	// Release the memory
	FUNC3(secret_buf);
	FUNC3(rand_buf);
	FUNC3(d_buf);
	FUNC3(a_buf);
	FUNC3(e_buf);
}
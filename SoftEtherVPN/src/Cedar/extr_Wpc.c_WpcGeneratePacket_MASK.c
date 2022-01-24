#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sign ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  X ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_10__ {int Size; int /*<<< orphan*/ * Buf; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  K ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int) ; 

BUF *FUNC9(PACK *pack, X *cert, K *key)
{
	UCHAR hash[SHA1_SIZE];
	BUF *pack_data;
	BUF *cert_data = NULL;
	BUF *sign_data = NULL;
	BUF *b;
	// Validate arguments
	if (pack == NULL)
	{
		return NULL;
	}

	pack_data = FUNC2(pack);
	FUNC5(hash, pack_data->Buf, pack_data->Size);

	if (cert != NULL && key != NULL)
	{
		UCHAR sign[128];
		cert_data = FUNC8(cert, false);

		FUNC3(sign, hash, sizeof(hash), key);

		sign_data = FUNC1();
		FUNC7(sign_data, sign, sizeof(sign));
		FUNC4(sign_data, 0, 0);
	}

	b = FUNC1();

	FUNC6(b, "PACK", pack_data->Buf, pack_data->Size);
	FUNC6(b, "HASH", hash, sizeof(hash));

	if (cert_data != NULL)
	{
		FUNC6(b, "CERT", cert_data->Buf, cert_data->Size);
		FUNC6(b, "SIGN", sign_data->Buf, sign_data->Size);
	}

	FUNC0(pack_data);
	FUNC0(cert_data);
	FUNC0(sign_data);

	FUNC4(b, 0, 0);

	return b;
}
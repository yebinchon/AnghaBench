#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  void UCHAR ;
struct TYPE_8__ {int CryptoId; } ;
struct TYPE_7__ {int /*<<< orphan*/  AesKey; void* DesKey3; void* DesKey2; void* DesKey1; TYPE_2__* Crypto; scalar_t__ Size; int /*<<< orphan*/  Data; } ;
typedef  TYPE_1__ IKE_CRYPTO_KEY ;
typedef  TYPE_2__ IKE_CRYPTO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__) ; 
 int DES_KEY_SIZE ; 
 void* FUNC2 (void*) ; 
#define  IKE_CRYPTO_3DES_ID 130 
#define  IKE_CRYPTO_AES_ID 129 
#define  IKE_CRYPTO_DES_ID 128 
 int FUNC3 (TYPE_2__*,scalar_t__) ; 
 TYPE_1__* FUNC4 (int) ; 

IKE_CRYPTO_KEY *FUNC5(IKE_CRYPTO *c, void *data, UINT size)
{
	IKE_CRYPTO_KEY *k;
	// Validate arguments
	if (c == NULL || data == NULL || size == 0)
	{
		return NULL;
	}

	if (FUNC3(c, size) == false)
	{
		return NULL;
	}

	k = FUNC4(sizeof(IKE_CRYPTO_KEY));
	k->Crypto = c;
	k->Data = FUNC1(data, size);
	k->Size = size;

	switch (k->Crypto->CryptoId)
	{
	case IKE_CRYPTO_DES_ID:
		// DES 64bit key
		k->DesKey1 = FUNC2(data);
		break;

	case IKE_CRYPTO_3DES_ID:
		// 3DES 192bit key
		k->DesKey1 = FUNC2(((UCHAR *)data) + DES_KEY_SIZE * 0);
		k->DesKey2 = FUNC2(((UCHAR *)data) + DES_KEY_SIZE * 1);
		k->DesKey3 = FUNC2(((UCHAR *)data) + DES_KEY_SIZE * 2);
		break;

	case IKE_CRYPTO_AES_ID:
		// AES variable length key
		k->AesKey = FUNC0(data, size);
		break;
	}

	return k;
}
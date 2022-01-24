#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_10__ {int* KeySizes; scalar_t__ VariableKeySize; } ;
struct TYPE_9__ {int CryptoKeySize; TYPE_6__* Crypto; int /*<<< orphan*/ * Dh; int /*<<< orphan*/ * Hash; void* DhId; void* HashId; void* CryptoId; void* LifeKilobytes; void* LifeSeconds; } ;
struct TYPE_8__ {int /*<<< orphan*/  Engine; } ;
typedef  TYPE_1__ IKE_SERVER ;
typedef  TYPE_2__ IKE_SA_TRANSFORM_SETTING ;
typedef  int /*<<< orphan*/  IKE_PACKET_TRANSFORM_PAYLOAD ;

/* Variables and functions */
 TYPE_6__* FUNC0 (int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,void*) ; 
 void* IKE_P1_AUTH_METHOD_PRESHAREDKEY ; 
#define  IKE_P1_LIFE_TYPE_KILOBYTES 129 
#define  IKE_P1_LIFE_TYPE_SECONDS 128 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_AUTH_METHOD ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_CRYPTO ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_DH_GROUP ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_HASH ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_KET_SIZE ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_LIFE_TYPE ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_LIFE_VALUE ; 
 void* INFINITE ; 
 int FUNC3 (TYPE_6__*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

bool FUNC7(IKE_SERVER *ike, IKE_PACKET_TRANSFORM_PAYLOAD *transform, IKE_SA_TRANSFORM_SETTING *setting)
{
	UINT i;
	// Validate arguments
	if (ike == NULL || transform == NULL || setting == NULL)
	{
		return false;
	}

	FUNC6(setting, sizeof(IKE_SA_TRANSFORM_SETTING));

	setting->CryptoId = FUNC4(transform, IKE_TRANSFORM_VALUE_P1_CRYPTO, 0);
	setting->HashId = FUNC4(transform, IKE_TRANSFORM_VALUE_P1_HASH, 0);

	if (FUNC4(transform, IKE_TRANSFORM_VALUE_P1_AUTH_METHOD, 0) != IKE_P1_AUTH_METHOD_PRESHAREDKEY)
	{
		// Only PSK authentication method is supported
		return false;
	}

	setting->DhId = FUNC4(transform, IKE_TRANSFORM_VALUE_P1_DH_GROUP, 0);

	setting->LifeKilobytes = INFINITE;
	setting->LifeSeconds = INFINITE;

	for (i = 0;i < FUNC5(transform, IKE_TRANSFORM_VALUE_P1_LIFE_TYPE);i++)
	{
		UINT life_type = FUNC4(transform, IKE_TRANSFORM_VALUE_P1_LIFE_TYPE, i);

		switch (life_type)
		{
		case IKE_P1_LIFE_TYPE_SECONDS:		// Number of seconds
			setting->LifeSeconds = FUNC4(transform, IKE_TRANSFORM_VALUE_P1_LIFE_VALUE, i);
			break;

		case IKE_P1_LIFE_TYPE_KILOBYTES:	// Kilobytes
			setting->LifeKilobytes = FUNC4(transform, IKE_TRANSFORM_VALUE_P1_LIFE_VALUE, i);
			break;

		default:
			// Unsupported expiration type
			return false;
		}
	}

	setting->Crypto = FUNC0(ike->Engine, false, setting->CryptoId);
	setting->Hash = FUNC2(ike->Engine, false, setting->HashId);
	setting->Dh = FUNC1(ike->Engine, false, setting->DhId);

	if (setting->Crypto == NULL || setting->Hash == NULL || setting->Dh == NULL)
	{
		// Unsupported algorithm
		return false;
	}

	if (setting->Crypto->VariableKeySize)
	{
		// Get the actual key size in the case of variable key size
		setting->CryptoKeySize = FUNC4(transform, IKE_TRANSFORM_VALUE_P1_KET_SIZE, 0);

		// bits -> bytes
		setting->CryptoKeySize = setting->CryptoKeySize / 8;

		if (setting->CryptoKeySize == 0 || FUNC3(setting->Crypto, setting->CryptoKeySize) == false)
		{
			// The key size is not specified or inappropriate
			return false;
		}
	}
	else
	{
		// Get a fixed key length for fixed key size
		setting->CryptoKeySize = setting->Crypto->KeySizes[0];
	}

	return true;
}
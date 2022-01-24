#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int HashId; int DhId; scalar_t__ LifeSeconds; scalar_t__ LifeKilobytes; int CryptoKeySize; int CapsuleMode; int /*<<< orphan*/  CryptoId; TYPE_1__* Crypto; int /*<<< orphan*/ * Dh; } ;
struct TYPE_4__ {scalar_t__ VariableKeySize; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ IPSEC_SA_TRANSFORM_SETTING ;
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  int /*<<< orphan*/  IKE_PACKET_PAYLOAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IKE_P2_LIFE_TYPE_KILOBYTES ; 
 int IKE_P2_LIFE_TYPE_SECONDS ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P2_CAPSULE ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P2_DH_GROUP ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P2_HMAC ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P2_KEY_SIZE ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P2_LIFE_TYPE ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P2_LIFE_VALUE ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

IKE_PACKET_PAYLOAD *FUNC4(IKE_SERVER *ike, IPSEC_SA_TRANSFORM_SETTING *setting)
{
	LIST *value_list;
	// Validate arguments
	if (ike == NULL || setting == NULL)
	{
		return NULL;
	}

	value_list = FUNC3(NULL);

	FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P2_HMAC, setting->HashId));

	if (setting->Dh != NULL)
	{
		FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P2_DH_GROUP, setting->DhId));
	}

	if (setting->LifeSeconds != INFINITE)
	{
		FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P2_LIFE_TYPE, IKE_P2_LIFE_TYPE_SECONDS));
		FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P2_LIFE_VALUE, setting->LifeSeconds));
	}

	if (setting->LifeKilobytes != INFINITE)
	{
		FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P2_LIFE_TYPE, IKE_P2_LIFE_TYPE_KILOBYTES));
		FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P2_LIFE_VALUE, setting->LifeKilobytes));
	}

	if (setting->Crypto->VariableKeySize)
	{
		FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P2_KEY_SIZE, setting->CryptoKeySize * 8));
	}

	FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P2_CAPSULE, setting->CapsuleMode));

	return FUNC1(1, setting->CryptoId, value_list);
}
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
struct TYPE_5__ {int CryptoId; int HashId; int DhId; scalar_t__ LifeSeconds; scalar_t__ LifeKilobytes; int CryptoKeySize; TYPE_1__* Crypto; } ;
struct TYPE_4__ {scalar_t__ VariableKeySize; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  TYPE_2__ IKE_SA_TRANSFORM_SETTING ;
typedef  int /*<<< orphan*/  IKE_PACKET_PAYLOAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IKE_P1_AUTH_METHOD_PRESHAREDKEY ; 
 int IKE_P1_LIFE_TYPE_KILOBYTES ; 
 int IKE_P1_LIFE_TYPE_SECONDS ; 
 int /*<<< orphan*/  IKE_TRANSFORM_ID_P1_KEY_IKE ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_AUTH_METHOD ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_CRYPTO ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_DH_GROUP ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_HASH ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_KET_SIZE ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_LIFE_TYPE ; 
 int /*<<< orphan*/  IKE_TRANSFORM_VALUE_P1_LIFE_VALUE ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

IKE_PACKET_PAYLOAD *FUNC4(IKE_SERVER *ike, IKE_SA_TRANSFORM_SETTING *setting)
{
	LIST *value_list;
	// Validate arguments
	if (ike == NULL || setting == NULL)
	{
		return NULL;
	}

	value_list = FUNC3(NULL);

	FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P1_CRYPTO, setting->CryptoId));
	FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P1_HASH, setting->HashId));
	FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P1_AUTH_METHOD, IKE_P1_AUTH_METHOD_PRESHAREDKEY));
	FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P1_DH_GROUP, setting->DhId));

	if (setting->LifeSeconds != INFINITE)
	{
		FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P1_LIFE_TYPE, IKE_P1_LIFE_TYPE_SECONDS));
		FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P1_LIFE_VALUE, setting->LifeSeconds));
	}

	if (setting->LifeKilobytes != INFINITE)
	{
		FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P1_LIFE_TYPE, IKE_P1_LIFE_TYPE_KILOBYTES));
		FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P1_LIFE_VALUE, setting->LifeKilobytes));
	}

	if (setting->Crypto->VariableKeySize)
	{
		FUNC0(value_list, FUNC2(IKE_TRANSFORM_VALUE_P1_KET_SIZE, setting->CryptoKeySize * 8));
	}

	return FUNC1(1, IKE_TRANSFORM_ID_P1_KEY_IKE, value_list);
}
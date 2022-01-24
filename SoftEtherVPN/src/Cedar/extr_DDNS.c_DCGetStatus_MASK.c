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
struct TYPE_7__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/  InternetSetting; int /*<<< orphan*/  AzureCertHash; int /*<<< orphan*/  CurrentAzureSignature; int /*<<< orphan*/  CurrentAzureTimestamp; int /*<<< orphan*/  CurrentAzureIp; int /*<<< orphan*/  CurrentIPv6; int /*<<< orphan*/  CurrentIPv4; int /*<<< orphan*/  DnsSuffix; int /*<<< orphan*/  CurrentFqdn; int /*<<< orphan*/  CurrentHostName; int /*<<< orphan*/  Err_IPv6; int /*<<< orphan*/  Err_IPv4; } ;
struct TYPE_6__ {int /*<<< orphan*/  Err_IPv6; int /*<<< orphan*/  ErrStr_IPv6; int /*<<< orphan*/  Err_IPv4; int /*<<< orphan*/  ErrStr_IPv4; int /*<<< orphan*/  InternetSetting; int /*<<< orphan*/  AzureCertHash; int /*<<< orphan*/  CurrentAzureSignature; int /*<<< orphan*/  CurrentAzureTimestamp; int /*<<< orphan*/  CurrentAzureIp; int /*<<< orphan*/  CurrentIPv6; int /*<<< orphan*/  CurrentIPv4; int /*<<< orphan*/  DnsSuffix; int /*<<< orphan*/  CurrentFqdn; int /*<<< orphan*/  CurrentHostName; } ;
typedef  int /*<<< orphan*/  INTERNET_SETTING ;
typedef  TYPE_1__ DDNS_CLIENT_STATUS ;
typedef  TYPE_2__ DDNS_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(DDNS_CLIENT *c, DDNS_CLIENT_STATUS *st)
{
	// Validate arguments
	if (c == NULL || st == NULL)
	{
		return;
	}

	FUNC5(st, sizeof(DDNS_CLIENT_STATUS));

	FUNC1(c->Lock);
	{
		st->Err_IPv4 = c->Err_IPv4;
		st->Err_IPv6 = c->Err_IPv6;

		FUNC2(st->CurrentHostName, sizeof(st->CurrentHostName), c->CurrentHostName);
		FUNC2(st->CurrentFqdn, sizeof(st->CurrentFqdn), c->CurrentFqdn);
		FUNC2(st->DnsSuffix, sizeof(st->DnsSuffix), c->DnsSuffix);
		FUNC2(st->CurrentIPv4, sizeof(st->CurrentIPv4), c->CurrentIPv4);
		FUNC2(st->CurrentIPv6, sizeof(st->CurrentIPv6), c->CurrentIPv6);

		FUNC2(st->CurrentAzureIp, sizeof(st->CurrentAzureIp), c->CurrentAzureIp);
		st->CurrentAzureTimestamp = c->CurrentAzureTimestamp;
		FUNC2(st->CurrentAzureSignature, sizeof(st->CurrentAzureSignature), c->CurrentAzureSignature);
		FUNC2(st->AzureCertHash, sizeof(st->AzureCertHash), c->AzureCertHash);

		FUNC0(&st->InternetSetting, &c->InternetSetting, sizeof(INTERNET_SETTING));
	}
	FUNC4(c->Lock);

	FUNC3(st->ErrStr_IPv4, sizeof(st->ErrStr_IPv4), FUNC6(st->Err_IPv4));
	FUNC3(st->ErrStr_IPv6, sizeof(st->ErrStr_IPv6), FUNC6(st->Err_IPv6));
}
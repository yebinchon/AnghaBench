#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  UNICODE ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  scalar_t__ UINT ;
typedef  void* UCHAR ;
struct TYPE_11__ {int* MacAddress; int /*<<< orphan*/  HardwareID; int /*<<< orphan*/  HardwareID_Raw; int /*<<< orphan*/  NdisConfig; } ;
struct TYPE_10__ {int /*<<< orphan*/  Buffer; scalar_t__ MaximumLength; } ;
struct TYPE_8__ {int IntegerData; int /*<<< orphan*/  StringData; } ;
struct TYPE_9__ {scalar_t__ ParameterType; TYPE_1__ ParameterData; } ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;
typedef  int /*<<< orphan*/  NDIS_HANDLE ;
typedef  TYPE_2__ NDIS_CONFIGURATION_PARAMETER ;
typedef  int BOOL ;
typedef  TYPE_3__ ANSI_STRING ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_SIZE ; 
 scalar_t__ NEO_MAC_ADDRESS_SIZE ; 
 scalar_t__ NEO_MAX_SPEED_DEFAULT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ NdisParameterInteger ; 
 scalar_t__ NdisParameterString ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void**,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_4__* ctx ; 
 int keep_link ; 
 scalar_t__ max_speed ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC15()
{
	void *buf;
	NDIS_STATUS ret;
	UINT size;
	NDIS_HANDLE config;
	NDIS_CONFIGURATION_PARAMETER *param;
	UNICODE *name;
	ANSI_STRING ansi;
	UNICODE_STRING *unicode;
	UINT speed;
	BOOL keep;

	// Get the config handle
	FUNC4(&ret, &config, ctx->NdisConfig);
	if (FUNC2(ret))
	{
		// Failure
		return FALSE;
	}

	// Read the MAC address
	FUNC6(&ret, &buf, &size, config);
	if (FUNC2(ret))
	{
		// Failure
		FUNC3(config);
		return FALSE;
	}

	// Copy the MAC address
	if (size != NEO_MAC_ADDRESS_SIZE)
	{
		// Invalid size
		FUNC3(config);
		return FALSE;
	}
	FUNC8(ctx->MacAddress, buf, NEO_MAC_ADDRESS_SIZE);

	if (ctx->MacAddress[0] == 0x00 &&
		ctx->MacAddress[1] == 0x00 &&
		ctx->MacAddress[2] == 0x01 &&
		ctx->MacAddress[3] == 0x00 &&
		ctx->MacAddress[4] == 0x00 &&
		ctx->MacAddress[5] == 0x01)
	{
		// Special MAC address
		UINT ptr32 = (UINT)((UINT64)ctx);

		ctx->MacAddress[0] = 0x00;
		ctx->MacAddress[1] = 0xAD;
		ctx->MacAddress[2] = ((UCHAR *)(&ptr32))[0];
		ctx->MacAddress[3] = ((UCHAR *)(&ptr32))[1];
		ctx->MacAddress[4] = ((UCHAR *)(&ptr32))[2];
		ctx->MacAddress[5] = ((UCHAR *)(&ptr32))[3];
	}

	// Initialize the key name of the device name
	name = FUNC12("MatchingDeviceId");

	// Read the hardware ID
	FUNC5(&ret, &param, config, FUNC1(name), NdisParameterString);
	FUNC0(name);
	if (FUNC2(ret))
	{
		// Failure
		FUNC3(config);
		return FALSE;
	}
	// Type checking
	if (param->ParameterType != NdisParameterString)
	{
		// Failure
		FUNC3(config);
		return FALSE;
	}
	unicode = &param->ParameterData.StringData;

	// Prepare a buffer for ANSI string
	FUNC10(&ansi, sizeof(ANSI_STRING));
	ansi.MaximumLength = MAX_SIZE - 1;
	ansi.Buffer = FUNC11(MAX_SIZE);

	// Convert to ANSI string
	FUNC7(&ansi, unicode);
	// Copy
	FUNC14(ctx->HardwareID, ansi.Buffer);
	FUNC14(ctx->HardwareID_Raw, ctx->HardwareID);
	// Convert to upper case
	FUNC13(ctx->HardwareID);
	// Release the memory
	FUNC9(ansi.Buffer);

	// Read the bit rate
	name = FUNC12("MaxSpeed");
	FUNC5(&ret, &param, config, FUNC1(name), NdisParameterInteger);
	FUNC0(name);

	if (FUNC2(ret) || param->ParameterType != NdisParameterInteger)
	{
		speed = NEO_MAX_SPEED_DEFAULT;
	}
	else
	{
		speed = param->ParameterData.IntegerData * 10000;
	}

	max_speed = speed;

	// Read the link keeping flag
	name = FUNC12("KeepLink");
	FUNC5(&ret, &param, config, FUNC1(name), NdisParameterInteger);
	FUNC0(name);

	if (FUNC2(ret) || param->ParameterType != NdisParameterInteger)
	{
		keep = false;
	}
	else
	{
		keep = (param->ParameterData.IntegerData == 0 ? false : true);
	}

	keep_link = keep;

	// Close the Config handle
	FUNC3(config);

	return TRUE;
}
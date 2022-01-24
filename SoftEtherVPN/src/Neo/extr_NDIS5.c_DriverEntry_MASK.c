#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_6__ {int /*<<< orphan*/  NdisWrapper; } ;
struct TYPE_5__ {int /*<<< orphan*/ * SendHandler; int /*<<< orphan*/  SendPacketsHandler; int /*<<< orphan*/  SetInformationHandler; int /*<<< orphan*/  ResetHandler; int /*<<< orphan*/  QueryInformationHandler; int /*<<< orphan*/  HaltHandler; int /*<<< orphan*/  InitializeHandler; int /*<<< orphan*/  MinorNdisVersion; int /*<<< orphan*/  MajorNdisVersion; } ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;
typedef  TYPE_1__ NDIS_MINIPORT_CHARACTERISTICS ;
typedef  int /*<<< orphan*/  DRIVER_OBJECT ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  NEO_NDIS_MAJOR_VERSION ; 
 int /*<<< orphan*/  NEO_NDIS_MINOR_VERSION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  NeoNdisHalt ; 
 int /*<<< orphan*/  NeoNdisInit ; 
 int /*<<< orphan*/  NeoNdisQuery ; 
 int /*<<< orphan*/  NeoNdisReset ; 
 int /*<<< orphan*/  NeoNdisSendPackets ; 
 int /*<<< orphan*/  NeoNdisSet ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 TYPE_2__* ctx ; 
 int g_is_win8 ; 
 int /*<<< orphan*/  ndis_wrapper_handle ; 

NDIS_STATUS FUNC6(DRIVER_OBJECT *DriverObject, UNICODE_STRING *RegistryPath)
{
	NDIS_MINIPORT_CHARACTERISTICS miniport;
	ULONG os_major_ver = 0, os_minor_ver = 0;

	// Initialize the Neo library
	if (FUNC3() == FALSE)
	{
		// Initialization Failed
		return STATUS_UNSUCCESSFUL;
	}

	g_is_win8 = false;

#ifndef	NDIS30_MINIPORT
	// Get the OS version
	FUNC5(&os_major_ver, &os_minor_ver, NULL, NULL);

	if (os_major_ver >= 7 || (os_major_ver == 6 && os_minor_ver >= 2))
	{
		// Windows 8
		g_is_win8 = true;
	}
#endif	// NDIS30_MINIPORT

	// Initialize the NDIS wrapper
	FUNC1(&ctx->NdisWrapper, DriverObject, RegistryPath, NULL);
	ndis_wrapper_handle = ctx->NdisWrapper;

	// Register a NDIS miniport driver
	FUNC4(&miniport, sizeof(NDIS_MINIPORT_CHARACTERISTICS));
	miniport.MajorNdisVersion = NEO_NDIS_MAJOR_VERSION;
	miniport.MinorNdisVersion = NEO_NDIS_MINOR_VERSION;

	// Register the handler
	miniport.InitializeHandler = NeoNdisInit;
	miniport.HaltHandler = NeoNdisHalt;
	miniport.QueryInformationHandler = NeoNdisQuery;
	miniport.ResetHandler = NeoNdisReset;
	miniport.SetInformationHandler = NeoNdisSet;

#ifndef	NDIS30_MINIPORT
	miniport.SendPacketsHandler = NeoNdisSendPackets;
#else	// NDIS30_MINIPORT
	miniport.SendHandler = NULL;
#endif	// NDIS30_MINIPORT

	if (FUNC0(FUNC2(ctx->NdisWrapper, &miniport, sizeof(NDIS_MINIPORT_CHARACTERISTICS))))
	{
		// Registration failure
		return STATUS_UNSUCCESSFUL;
	}

	// Initialization success
	return STATUS_SUCCESS;
}
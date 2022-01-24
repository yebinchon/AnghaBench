#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dwOSVersionInfoSize; int dwMajorVersion; scalar_t__ dwPlatformId; int /*<<< orphan*/  dwBuildNumber; } ;
struct TYPE_3__ {scalar_t__ hInstance; TYPE_2__ osversion; } ;

/* Variables and functions */
#define  CPUID_AMD_3DNOW 134 
#define  CPUID_AXP 133 
#define  CPUID_GENERIC 132 
#define  CPUID_INTEL_KATMAI 131 
#define  CPUID_INTEL_MMX 130 
#define  CPUID_INTEL_PENTIUM 129 
#define  CPUID_INTEL_UNSUPPORTED 128 
 int /*<<< orphan*/  CVAR_ROM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ MainWndProc ; 
 scalar_t__ OSR2_BUILD_NUMBER ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 () ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  Sys_In_Restart_f ; 
 int /*<<< orphan*/  Sys_Net_Restart_f ; 
 scalar_t__ VER_PLATFORM_WIN32_NT ; 
 scalar_t__ VER_PLATFORM_WIN32_WINDOWS ; 
 scalar_t__ VER_PLATFORM_WIN32s ; 
 scalar_t__ WIN98_BUILD_NUMBER ; 
 TYPE_1__ g_wv ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 char* FUNC15 (char*,int) ; 

void FUNC16( void ) {
	int cpuid;

	// make sure the timer is high precision, otherwise
	// NT gets 18ms resolution
	FUNC14( 1 );

	FUNC0 ("in_restart", Sys_In_Restart_f);
	FUNC0 ("net_restart", Sys_Net_Restart_f);

	g_wv.osversion.dwOSVersionInfoSize = sizeof( g_wv.osversion );

	if (!FUNC7 (&g_wv.osversion))
		FUNC11 ("Couldn't get OS info");

	if (g_wv.osversion.dwMajorVersion < 4)
		FUNC11 ("Quake3 requires Windows version 4 or greater");
	if (g_wv.osversion.dwPlatformId == VER_PLATFORM_WIN32s)
		FUNC11 ("Quake3 doesn't run on Win32s");

	if ( g_wv.osversion.dwPlatformId == VER_PLATFORM_WIN32_NT )
	{
		FUNC4( "arch", "winnt" );
	}
	else if ( g_wv.osversion.dwPlatformId == VER_PLATFORM_WIN32_WINDOWS )
	{
		if ( FUNC9( g_wv.osversion.dwBuildNumber ) >= WIN98_BUILD_NUMBER )
		{
			FUNC4( "arch", "win98" );
		}
		else if ( FUNC9( g_wv.osversion.dwBuildNumber ) >= OSR2_BUILD_NUMBER )
		{
			FUNC4( "arch", "win95 osr2.x" );
		}
		else
		{
			FUNC4( "arch", "win95" );
		}
	}
	else
	{
		FUNC4( "arch", "unknown Windows variant" );
	}

	// save out a couple things in rom cvars for the renderer to access
	FUNC3( "win_hinstance", FUNC15("%i", (int)g_wv.hInstance), CVAR_ROM );
	FUNC3( "win_wndproc", FUNC15("%i", (int)MainWndProc), CVAR_ROM );

	//
	// figure out our CPU
	//
	FUNC3( "sys_cpustring", "detect", 0 );
	if ( !FUNC10( FUNC6( "sys_cpustring"), "detect" ) )
	{
		FUNC2( "...detecting CPU, found " );

		cpuid = FUNC13();

		switch ( cpuid )
		{
		case CPUID_GENERIC:
			FUNC4( "sys_cpustring", "generic" );
			break;
		case CPUID_INTEL_UNSUPPORTED:
			FUNC4( "sys_cpustring", "x86 (pre-Pentium)" );
			break;
		case CPUID_INTEL_PENTIUM:
			FUNC4( "sys_cpustring", "x86 (P5/PPro, non-MMX)" );
			break;
		case CPUID_INTEL_MMX:
			FUNC4( "sys_cpustring", "x86 (P5/Pentium2, MMX)" );
			break;
		case CPUID_INTEL_KATMAI:
			FUNC4( "sys_cpustring", "Intel Pentium III" );
			break;
		case CPUID_AMD_3DNOW:
			FUNC4( "sys_cpustring", "AMD w/ 3DNow!" );
			break;
		case CPUID_AXP:
			FUNC4( "sys_cpustring", "Alpha AXP" );
			break;
		default:
			FUNC1( ERR_FATAL, "Unknown cpu type %d\n", cpuid );
			break;
		}
	}
	else
	{
		FUNC2( "...forcing CPU type to " );
		if ( !FUNC10( FUNC6( "sys_cpustring" ), "generic" ) )
		{
			cpuid = CPUID_GENERIC;
		}
		else if ( !FUNC10( FUNC6( "sys_cpustring" ), "x87" ) )
		{
			cpuid = CPUID_INTEL_PENTIUM;
		}
		else if ( !FUNC10( FUNC6( "sys_cpustring" ), "mmx" ) )
		{
			cpuid = CPUID_INTEL_MMX;
		}
		else if ( !FUNC10( FUNC6( "sys_cpustring" ), "3dnow" ) )
		{
			cpuid = CPUID_AMD_3DNOW;
		}
		else if ( !FUNC10( FUNC6( "sys_cpustring" ), "PentiumIII" ) )
		{
			cpuid = CPUID_INTEL_KATMAI;
		}
		else if ( !FUNC10( FUNC6( "sys_cpustring" ), "axp" ) )
		{
			cpuid = CPUID_AXP;
		}
		else
		{
			FUNC2( "WARNING: unknown sys_cpustring '%s'\n", FUNC6( "sys_cpustring" ) );
			cpuid = CPUID_GENERIC;
		}
	}
	FUNC5( "sys_cpuid", cpuid );
	FUNC2( "%s\n", FUNC6( "sys_cpustring" ) );

	FUNC4( "username", FUNC12() );

	FUNC8();		// FIXME: not in dedicated?
}
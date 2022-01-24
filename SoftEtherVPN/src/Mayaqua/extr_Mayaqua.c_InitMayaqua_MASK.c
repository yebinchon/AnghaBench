#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 () ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int FUNC30 () ; 
 int FUNC31 () ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC33 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 () ; 
 int /*<<< orphan*/  UNIX_SVC_ARG_FOREGROUND ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  _DISABLE_PER_THREAD_LOCALE ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cmdline ; 
 int dot_net_mode ; 
 int /*<<< orphan*/ * exename ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int g_debug ; 
 int g_foreground ; 
 int g_memcheck ; 
 int /*<<< orphan*/  init_mayaqua_counter ; 
 int /*<<< orphan*/  is_nt ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  tick_manual_lock ; 

void FUNC43(bool memcheck, bool debug, int argc, char **argv)
{
	wchar_t tmp[MAX_PATH];
	UCHAR hash[SHA1_SIZE];

	if ((init_mayaqua_counter++) > 0)
	{
		return;
	}

	FUNC17();

	g_memcheck = memcheck;
	g_debug = debug;
	cmdline = NULL;
	if (dot_net_mode == false)
	{
		// Fail this for some reason when this is called this in .NET mode
		FUNC40(stdout, NULL);
	}

#ifdef OS_UNIX
	g_foreground = (argc >= 3 && StrCmpi(argv[2], UNIX_SVC_ARG_FOREGROUND) == 0);
#else
	g_foreground = false;
#endif // OS_UNIX

	// Acquisition whether NT
#ifdef	OS_WIN32
	is_nt = Win32IsNt();
#endif	// OS_WIN32

	// Check endian
	FUNC2();

#ifdef	OS_WIN32
	_configthreadlocale(_DISABLE_PER_THREAD_LOCALE);
#endif	// OS_WIN32

	// Set the locale information of the CRT to the Japanese
	FUNC41(LC_ALL, "");

	// Initialization of OS
	FUNC29();

	// Initialize the random number
	FUNC42((UINT)FUNC34());

	tick_manual_lock = FUNC28();

	// Initialization of CRC32
	FUNC8();

	// Initialization of the FIFO system
	FUNC10();

	// Initialize the Kernel status
	FUNC13();

	if (FUNC25())
	{
		// Initialize the tracking
		FUNC23();
	}

	// Initialization of thread pool
	FUNC21();

	// Initialize the string library
	FUNC19();

	// Initialization of the locale information
	FUNC32(NULL);

	// Initialization of the crypt library
	FUNC9();

	// Initialization of the real-time clock
	FUNC22();

	// Initialize the network communication module
	FUNC14();

	// Initialization of the acquisition of the EXE file name
	FUNC11(argc >= 1 ? argv[0] : NULL);

	// Initialization of the command line string
	FUNC7(argc, argv);

	// Initialization of OS information
	FUNC15();

	// Initialization of the operating system-specific module
#ifdef	OS_WIN32
	MsInit();	// Microsoft Win32
#endif	// OS_WIN32

	// Initialization of the security token module
	FUNC18();

	if (FUNC30() == false)
	{
		// Abort
		FUNC39(0);
	}

	// RSA Check
	if (FUNC31() == false)
	{
		// Abort
		FUNC0("OpenSSL Library Init Failed. (too old?)\nPlease install the latest version of OpenSSL.\n\n", "RsaCheck()");
		FUNC39(0);
	}

	// Initialization of HamCore file system
	FUNC12();

	// Initialization of string table routine
	FUNC20();

	if (exename == NULL)
	{
		// Executable file name
		exename = FUNC4("unknown");
	}

	// Check whether the executable file name of themselves is found
	// (If not found, quit because this is started in strange path)
	FUNC6(tmp, sizeof(tmp));
	if (FUNC24(tmp) == false)
	{
		wchar_t tmp2[MAX_SIZE];

		FUNC35(tmp2, sizeof(tmp2),
			L"Error: Executable binary file \"%s\" not found.\r\n\r\n"
			L"Please execute program with full path.\r\n",
			tmp);

		FUNC1(tmp2, NULL);
		FUNC38(0);
	}

	FUNC3();

	// Initialization of Probe
	FUNC16();

	// Initialization of Machine Hash
	FUNC5(hash);

	// Reading Private IP file
	FUNC26();
}
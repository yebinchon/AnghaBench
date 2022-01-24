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
struct TYPE_3__ {void* persona_id; void* persona_gid; } ;
struct persona_args {int flags; void* override_uid; TYPE_1__ kinfo; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  pa ;
struct TYPE_4__ {int verbose; int wait_for_children; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_CHILD_FAIL ; 
 int PA_HAS_GID ; 
 int PA_HAS_GROUPS ; 
 int PA_HAS_ID ; 
 int PA_HAS_UID ; 
 int PA_NONE ; 
 int PA_OVERRIDE ; 
 int PA_SHOULD_VERIFY ; 
 int /*<<< orphan*/  PERSONA_TEST_NAME ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_2__ g ; 
 int /*<<< orphan*/  g_child_mtx ; 
 scalar_t__ FUNC8 () ; 
 char FUNC9 (int,char**,char*) ; 
 void* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  main_sighandler ; 
 int /*<<< orphan*/  FUNC13 (struct persona_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  optarg ; 
 size_t optind ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (int,char**,struct persona_args*) ; 
 scalar_t__ FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int FUNC25(int argc, char **argv)
{
	char ch;
	int ret;

	FUNC16(&g_child_mtx, NULL);

	/*
	 * Defaults
	 */
	g.verbose = 0;
	g.wait_for_children = 1;

	if (argc > 1 && FUNC22(argv[1], "child") == 0) {
		optind = 2;
		ret = FUNC4(argc, argv);
		if (ret != 1)
			FUNC7(ret);
		if (FUNC22(argv[optind], "spawn") != 0) {
			FUNC15("child exiting (%s).\n", argv[optind]);
			FUNC7(0);
		}
		optind++;

		/*
		 * If we get here, then the child wants us to continue running
		 * to potentially spawn yet another child process. This is
		 * helpful when testing inherited personas and verifying
		 * persona restrictions.
		 */
	}

	if (FUNC8() != 0)
		FUNC5("%s must be run as root", argv[0] ? FUNC3(argv[0]) : PERSONA_TEST_NAME);

	struct persona_args pa;
	FUNC13(&pa, 0, sizeof(pa));

	pa.flags = PA_NONE;
	pa.kinfo.persona_id = FUNC10();

	/*
	 * Argument parse for default overrides:
	 */
	while ((ch = FUNC9(argc, argv, "Vg:G:I:u:vwh")) != -1) {
		switch (ch) {
		case 'V':
			pa.flags |= PA_SHOULD_VERIFY;
			break;
		case 'g':
			pa.kinfo.persona_gid = FUNC2(optarg);
			pa.flags |= PA_HAS_GID;
			pa.flags |= PA_OVERRIDE;
			break;
		case 'G':
			ret = FUNC14(&pa.kinfo, optarg);
			if (ret < 0)
				FUNC5("Invalid groupspec: \"%s\"", optarg);
			pa.flags |= PA_HAS_GROUPS;
			pa.flags |= PA_OVERRIDE;
			break;
		case 'I':
			pa.kinfo.persona_id = FUNC2(optarg);
			if (pa.kinfo.persona_id == 0)
				FUNC5("Invalid Persona ID: %s", optarg);
			pa.flags |= PA_HAS_ID;
			break;
		case 'u':
			pa.override_uid = FUNC2(optarg);
			pa.flags |= PA_HAS_UID;
			pa.flags |= PA_OVERRIDE;
			break;
		case 'v':
			g.verbose = 1;
			break;
		case 'w':
			g.wait_for_children = 0;
			break;
		case 'h':
		case '?':
			FUNC23(argv[0], 1);
		case ':':
		default:
			FUNC15("Invalid option: '%c'\n", ch);
			FUNC23(argv[0], 0);
		}
	}

	if (pa.flags & PA_SHOULD_VERIFY)
		pa.flags = ~PA_OVERRIDE;

	if (optind >= argc) {
		FUNC15("No program given!\n");
		FUNC23(argv[0], 0);
	}

	argc -= optind;
	for (int i = 0; i < argc; i++) {
		argv[i] = argv[i + optind];
	}

	argv[argc] = NULL;

	ret = FUNC21(argc, argv, &pa);
	if (ret < 0)
		return ret;

	pid_t child_pid = (pid_t)ret;
	int status = 0;
	sigset_t sigset;
	FUNC18(&sigset);
	FUNC17(&sigset, SIGCHLD);
	FUNC20(SIG_UNBLOCK, &sigset, NULL);
	FUNC19(SIGCHLD, main_sighandler);

	if (g.wait_for_children) {
		FUNC12("Waiting for child...");
		FUNC24(child_pid, &status, 0);
		if (FUNC1(status)) {
			status = FUNC0(status);
			if (status != 0)
				FUNC6(ERR_CHILD_FAIL,
				     "Child exited with status: %d", status);
		}
	}

	FUNC11("Done.");
	return 0;
}
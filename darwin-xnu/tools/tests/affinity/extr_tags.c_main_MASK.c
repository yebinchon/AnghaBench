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
typedef  int thread_act_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ TRUE ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int,char**,char*) ; 
 char* input ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int**,int*) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 void* verbosity ; 

int
FUNC17(int argc, char *argv[])
{
	kern_return_t		ret;
	mach_port_name_t	port;
	int			pid;
	int			c;
	thread_act_t		*thread_array;
	mach_msg_type_number_t	num_threads;
	int			i;
	boolean_t		interactive = FALSE;
	int			tag;

	if (FUNC6() != 0) {
		FUNC10("Must be run as root\n");
		FUNC2(1);
	}

	/* Do switch parsing: */
	while ((c = FUNC7 (argc, argv, "hiv:")) != -1) {
		switch (c) {
		case 'i':
			interactive = TRUE;
			break;
		case 'v':
			verbosity = FUNC0(optarg);
			break;
		case 'h':
		case '?':
		default:
			FUNC16();
		}
	}
	argc -= optind; argv += optind;
	if (argc > 0)
		pid = FUNC0(*argv);

	ret = FUNC12(FUNC8(), pid, &port);
	if (ret != KERN_SUCCESS)
		FUNC1(1, "task_for_pid(,%d,) returned %d", pid, ret);	

	FUNC9("task %p\n", port);
	ret = FUNC13(port, &thread_array, &num_threads);
	if (ret != KERN_SUCCESS)
		FUNC1(1, "task_threads() returned %d", pid, ret);	
 
	for (i = 0; i < num_threads; i++) {
		FUNC10(" %d: thread 0x%08x tag %d\n",
			i, thread_array[i], FUNC14(thread_array[i]));
	}

	while (interactive) {
		FUNC10("Enter new tag or <return> to skip or ^D to quit\n");
		for (i = 0; i < num_threads; i++) {
			tag =  FUNC14(thread_array[i]);
			FUNC10(" %d: thread 0x%08x tag %d: ",
				i, thread_array[i], tag);
			FUNC4(stdout);
			(void) FUNC5(input, 20, stdin);
			if (FUNC3(stdin)) {
				FUNC10("\n");
				interactive = FALSE;
				break;
			}
			if (FUNC11(input) > 1) {
				tag = FUNC0(input);
				FUNC15(thread_array[i], tag);
			}
		}
	}

	return 0;
}
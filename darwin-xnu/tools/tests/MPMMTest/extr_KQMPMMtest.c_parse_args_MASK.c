#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  host_info_t ;
struct TYPE_2__ {int avail_cpus; } ;
typedef  TYPE_1__ host_basic_info_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_BASIC_INFO ; 
 int /*<<< orphan*/  HOST_BASIC_INFO_COUNT ; 
 scalar_t__ KERN_SUCCESS ; 
 void* TRUE ; 
 void* affinity ; 
 void* client_delay ; 
 void* client_pages ; 
 void* client_spin ; 
 void* do_select ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  msg_type ; 
 int /*<<< orphan*/  msg_type_complex ; 
 int /*<<< orphan*/  msg_type_inline ; 
 int /*<<< orphan*/  msg_type_trivial ; 
 int num_clients ; 
 int num_ints ; 
 int num_msgs ; 
 int num_servers ; 
 void* oneway ; 
 void* save_perfdata ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 void* FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* threaded ; 
 void* timeshare ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 void* verbose ; 

void FUNC5(int argc, char *argv[]) {
	host_basic_info_data_t		info;
	mach_msg_type_number_t		count;
	kern_return_t			result;

	/* Initialize defaults */
	msg_type = msg_type_trivial;
	num_ints = 64;
	num_msgs = 100000;
	client_delay = 0;
	num_clients = 4;

	count = HOST_BASIC_INFO_COUNT;
	result = FUNC0(FUNC1(), HOST_BASIC_INFO, 
			(host_info_t)&info, &count);
	if (result == KERN_SUCCESS && info.avail_cpus > 1)
		num_servers = info.avail_cpus / 2;
	else
		num_servers = 1;

	const char *progname = argv[0];
	argc--; argv++;
	while (0 < argc) {
		if (0 == FUNC2("-verbose", argv[0])) {
			verbose = TRUE;
			argc--; argv++;
		} else if (0 == FUNC2("-affinity", argv[0])) {
			affinity = TRUE;
			argc--; argv++;
		} else if (0 == FUNC2("-timeshare", argv[0])) {
			timeshare = TRUE;
			argc--; argv++;
		} else if (0 == FUNC2("-threaded", argv[0])) {
			threaded = TRUE;
			argc--; argv++;
		} else if (0 == FUNC2("-oneway", argv[0])) {
			oneway = TRUE;
			argc--; argv++;
		} else if (0 == FUNC2("-type", argv[0])) {
			if (argc < 2) 
				FUNC4(progname);
			if (0 == FUNC2("trivial", argv[1])) {
				msg_type = msg_type_trivial;
			} else if (0 == FUNC2("inline", argv[1])) {
				msg_type = msg_type_inline;
			} else if (0 == FUNC2("complex", argv[1])) {
				msg_type = msg_type_complex;
			} else 
				FUNC4(progname);
			argc -= 2; argv += 2;
		} else if (0 == FUNC2("-numints", argv[0])) {
			if (argc < 2) 
				FUNC4(progname);
			num_ints = FUNC3(argv[1], NULL, 0);
			argc -= 2; argv += 2;
		} else if (0 == FUNC2("-count", argv[0])) {
			if (argc < 2) 
				FUNC4(progname);
			num_msgs = FUNC3(argv[1], NULL, 0);
			argc -= 2; argv += 2;
		}  else if (0 == FUNC2("-clients", argv[0])) {
			if (argc < 2) 
				FUNC4(progname);
			num_clients = FUNC3(argv[1], NULL, 0);
			argc -= 2; argv += 2;
		}  else if (0 == FUNC2("-servers", argv[0])) {
			if (argc < 2) 
				FUNC4(progname);
			num_servers = FUNC3(argv[1], NULL, 0);
			argc -= 2; argv += 2;
		} else if (0 == FUNC2("-delay", argv[0])) {
			if (argc < 2) 
				FUNC4(progname);
			client_delay = FUNC3(argv[1], NULL, 0);
			argc -= 2; argv += 2;
		} else if (0 == FUNC2("-spin", argv[0])) {
			if (argc < 2) 
				FUNC4(progname);
			client_spin = FUNC3(argv[1], NULL, 0);
			argc -= 2; argv += 2;
		} else if (0 == FUNC2("-pages", argv[0])) {
			if (argc < 2) 
				FUNC4(progname);
			client_pages = FUNC3(argv[1], NULL, 0);
			argc -= 2; argv += 2;
		} else if (0 == FUNC2("-select", argv[0])) {
			do_select = TRUE;
			argc--; argv++;
		} else if (0 == FUNC2("-perf", argv[0])) {
			save_perfdata = TRUE;
			argc--; argv++;
		} else 
			FUNC4(progname);
	}
}
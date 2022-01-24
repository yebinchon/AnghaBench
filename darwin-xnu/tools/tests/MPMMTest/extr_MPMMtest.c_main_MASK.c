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
typedef  int /*<<< orphan*/  thread_id_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct port_args {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ NSEC_PER_SEC ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ affinity ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_client_send_time ; 
 int /*<<< orphan*/  g_timebase ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 int num_clients ; 
 int num_msgs ; 
 int num_servers ; 
 int /*<<< orphan*/  FUNC11 (int,char**) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,double,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ save_perfdata ; 
 int /*<<< orphan*/  server ; 
 struct port_args* server_port_args ; 
 char** server_port_name ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ stress_prepost ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC20 () ; 

int FUNC21(int argc, char *argv[]) 
{
	int		i;
	int		j;
	thread_id_t	*client_id;
	thread_id_t	*server_id;

	FUNC14(SIGINT, signal_handler);
	FUNC11(argc, argv);

	if (FUNC9(&g_timebase) != KERN_SUCCESS) {
		FUNC6(stderr, "Can't get mach_timebase_info!\n");
		FUNC4(1);
	}

	FUNC2();

	/*
	 * If we're using affinity create an empty namespace now
	 * so this is shared by all our offspring.
	 */
	if (affinity)
		FUNC18(0);

	server_id = (thread_id_t *) FUNC10(num_servers * sizeof(thread_id_t));
	server_port_name = (char **) FUNC10(num_servers * sizeof(char *));
	server_port_args = (struct port_args *)FUNC3(sizeof(struct port_args), num_servers);
	if (!server_id || !server_port_name || !server_port_args) {
		FUNC6(stderr, "malloc/calloc of %d server book keeping structs failed\n", num_servers);
		FUNC4(1);
	}

	if (verbose)
		FUNC12("creating %d servers\n", num_servers);
	for (i = 0; i < num_servers; i++) {
		server_port_name[i] = (char *) FUNC10(sizeof("PORT.pppppp.xx"));
		/* PORT names include pid of main process for disambiguation */
		FUNC16(server_port_name[i], "PORT.%06d.%02d", FUNC7(), i);
		FUNC19(&server_id[i], server, (void *) (long) i);
	}

	int totalclients = num_servers * num_clients;
	int totalmsg = num_msgs * totalclients;
	struct timeval starttv, endtv, deltatv;

	/*
	 * Wait for all servers to have registered all ports before starting
	 * the clients and the clock.
	 */
	FUNC20();
	
	FUNC12("%d server%s, %d client%s per server (%d total) %u messages...", 
			num_servers, (num_servers > 1)? "s" : "",
			num_clients, (num_clients > 1)? "s" : "",
			totalclients,
			totalmsg);
	FUNC5(stdout);

	/* Call gettimeofday() once and throw away result; some implementations
	 * (like Mach's) cache some time zone info on first call.
	 */
	FUNC8(&starttv, NULL);
	FUNC8(&starttv, NULL);

	client_id = (thread_id_t *) FUNC10(totalclients * sizeof(thread_id_t));
	if (verbose)
		FUNC12("creating %d clients\n", totalclients);
	for (i = 0; i < num_servers; i++) {
		for (j = 0; j < num_clients; j++) {
			FUNC19(
				&client_id[(i*num_clients) + j],
				client,
				(void *) (long) i);
		}
	}

	/* Wait for servers to complete */
	for (i = 0; i < num_servers; i++) {
		FUNC17(&server_id[i]);
	}

	FUNC8(&endtv, NULL);
	if (verbose)
		FUNC12("all servers complete: waiting for clients...\n");

	for (i = 0; i < totalclients; i++) {
		FUNC17(&client_id[i]);
	}

	/* report results */
	deltatv.tv_sec = endtv.tv_sec - starttv.tv_sec;
	deltatv.tv_usec = endtv.tv_usec - starttv.tv_usec;
	if (endtv.tv_usec < starttv.tv_usec) {
		deltatv.tv_sec--;
		deltatv.tv_usec += 1000000;
	}

	double dsecs = (double) deltatv.tv_sec + 
		1.0E-6 * (double) deltatv.tv_usec;

	FUNC12(" in %lu.%03u seconds\n",
			deltatv.tv_sec, deltatv.tv_usec/1000);
	FUNC12("  throughput in messages/sec:     %g\n",
			(double)totalmsg / dsecs);
	FUNC12("  average message latency (usec): %2.3g\n", 
			dsecs * 1.0E6 / (double) totalmsg);

	double time_in_sec = (double)deltatv.tv_sec + (double)deltatv.tv_usec/1000.0;
	double throughput_msg_p_sec = (double) totalmsg/dsecs;
	double avg_msg_latency = dsecs*1.0E6 / (double)totalmsg;

	if (save_perfdata == TRUE) {
		char name[256];
		FUNC15(name, sizeof(name), "%s_avg_msg_latency", FUNC1(argv[0]));
		FUNC13(name, "usec", avg_msg_latency, "Message latency measured in microseconds. Lower is better", stderr);
	}

	if (stress_prepost) {
		int64_t sendns = FUNC0(g_client_send_time);
		dsecs = (double)sendns / (double)NSEC_PER_SEC;
		FUNC12("  total send time: %2.3gs\n", dsecs);
		FUNC12("  average send time (usec): %2.3g\n",
		       dsecs * 1.0E6 / (double)totalmsg);
	}

	return (0);

}
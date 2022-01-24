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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ TRUE ; 
 scalar_t__ affinity ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int num_clients ; 
 int num_msgs ; 
 int num_servers ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,double,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,double,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ save_perfdata ; 
 int /*<<< orphan*/  server ; 
 char** server_port_name ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC15 () ; 

int FUNC16(int argc, char *argv[]) 
{
	int		i;
	int		j;
	thread_id_t	*client_id;
	thread_id_t	*server_id;

	FUNC9(SIGINT, signal_handler);
	FUNC6(argc, argv);

	FUNC1();

	/*
	 * If we're using affinity create an empty namespace now
	 * so this is shared by all our offspring.
	 */
	if (affinity)
		FUNC13(0);

	server_id = (thread_id_t *) FUNC5(num_servers * sizeof(thread_id_t));
	server_port_name = (char **) FUNC5(num_servers * sizeof(char *));
	if (verbose)
		FUNC7("creating %d servers\n", num_servers);
	for (i = 0; i < num_servers; i++) {
		server_port_name[i] = (char *) FUNC5(sizeof("PORT.pppppp.xx"));
		/* PORT names include pid of main process for disambiguation */
		FUNC11(server_port_name[i], "PORT.%06d.%02d", FUNC3(), i);
		FUNC14(&server_id[i], server, (void *) (long) i);
	}

	int totalclients = num_servers * num_clients;
	int totalmsg = num_msgs * totalclients;
	struct timeval starttv, endtv, deltatv;

	/*
	 * Wait for all servers to have registered all ports before starting
	 * the clients and the clock.
	 */
	FUNC15();
	
	FUNC7("%d server%s, %d client%s per server (%d total) %u messages...", 
			num_servers, (num_servers > 1)? "s" : "",
			num_clients, (num_clients > 1)? "s" : "",
			totalclients,
			totalmsg);
	FUNC2(stdout);

	/* Call gettimeofday() once and throw away result; some implementations
	 * (like Mach's) cache some time zone info on first call.
	 */
	FUNC4(&starttv, NULL);
	FUNC4(&starttv, NULL);

	client_id = (thread_id_t *) FUNC5(totalclients * sizeof(thread_id_t));
	if (verbose)
		FUNC7("creating %d clients\n", totalclients);
	for (i = 0; i < num_servers; i++) {
		for (j = 0; j < num_clients; j++) {
			FUNC14(
				&client_id[(i*num_clients) + j],
				client,
				(void *) (long) i);
		}
	}

	/* Wait for servers to complete */
	for (i = 0; i < num_servers; i++) {
		FUNC12(&server_id[i]);
	}

	FUNC4(&endtv, NULL);

	for (i = 0; i < totalclients; i++) {
		FUNC12(&client_id[i]);
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

	double time_in_sec = (double)deltatv.tv_sec + (double)deltatv.tv_usec/1000.0;
	double throughput_msg_p_sec = (double) totalmsg/dsecs;
	double avg_msg_latency = dsecs*1.0E6 / (double)totalmsg;

	FUNC7(" in %ld.%03u seconds\n",  
	       (long)deltatv.tv_sec, deltatv.tv_usec/1000);
	FUNC7("  throughput in messages/sec:     %g\n",
			(double)totalmsg / dsecs);
	FUNC7("  average message latency (usec): %2.3g\n", 
			dsecs * 1.0E6 / (double) totalmsg);

	if (save_perfdata == TRUE) {
		char name[256];
		FUNC10(name, sizeof(name), "%s_avg_msg_latency", FUNC0(argv[0]));
		FUNC8(name, "usec", avg_msg_latency, "Message latency measured in microseconds. Lower is better", stderr);
	}
	return (0);

}
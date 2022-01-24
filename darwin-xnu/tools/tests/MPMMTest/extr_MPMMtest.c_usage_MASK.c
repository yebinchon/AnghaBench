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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2(const char *progname) {
	FUNC1(stderr, "usage: %s [options]\n", progname);
	FUNC1(stderr, "where options are:\n");
	FUNC1(stderr, "    -affinity\t\tthreads use affinity\n");
	FUNC1(stderr, "    -timeshare\t\tthreads use timeshare\n");
	FUNC1(stderr, "    -threaded\t\tuse (p)threads\n");
	FUNC1(stderr, "    -verbose\t\tbe verbose (use multiple times to increase verbosity)\n");
	FUNC1(stderr, "    -oneway\t\tdo not request return reply\n");
	FUNC1(stderr, "    -count num\t\tnumber of messages to send\n");
	FUNC1(stderr, "    -perf   \t\tCreate perfdata files for metrics.\n");
	FUNC1(stderr, "    -type trivial|inline|complex\ttype of messages to send\n");
	FUNC1(stderr, "    -numints num\tnumber of 32-bit ints to send in messages\n");
	FUNC1(stderr, "    -servers num\tnumber of server threads to run\n");
	FUNC1(stderr, "    -clients num\tnumber of clients per server\n");
	FUNC1(stderr, "    -delay num\t\tmicroseconds to sleep clients between messages\n");
	FUNC1(stderr, "    -work num\t\tmicroseconds of client work\n");
	FUNC1(stderr, "    -pages num\t\tpages of memory touched by client work\n");
	FUNC1(stderr, "    -set nset num\tcreate [nset] portsets and [num] ports in each server.\n");
	FUNC1(stderr, "                 \tEach port is connected to each set.\n");
	FUNC1(stderr, "    -prepost\t\tstress the prepost system (implies -threaded, requires -set X Y)\n");
	FUNC1(stderr, "default values are:\n");
	FUNC1(stderr, "    . no affinity\n");
	FUNC1(stderr, "    . not timeshare\n");
	FUNC1(stderr, "    . not threaded\n");
	FUNC1(stderr, "    . not verbose\n");
	FUNC1(stderr, "    . not oneway\n");
	FUNC1(stderr, "    . client sends 100000 messages\n");
	FUNC1(stderr, "    . inline message type\n");
	FUNC1(stderr, "    . 64 32-bit integers in inline/complex messages\n");
	FUNC1(stderr, "    . (num_available_processors+1)%%2 servers\n");
	FUNC1(stderr, "    . 4 clients per server\n");
	FUNC1(stderr, "    . no delay\n");
	FUNC1(stderr, "    . no sets / extra ports\n");
	FUNC1(stderr, "    . no prepost stress\n");
	FUNC0(1);
}
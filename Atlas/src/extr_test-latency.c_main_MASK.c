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
typedef  char gchar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  log_func ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,...) ; 

int FUNC5(int argc, char **argv) {
	int rounds;
	const gchar *user;
	const gchar *password;
	const gchar *db;
	const gchar *host;

	user     = FUNC3("MYSQL_TEST_USER", "root");	
	password = FUNC3("MYSQL_TEST_PASSWORD", "");	
	db       = FUNC3("MYSQL_TEST_DB",   "test");	
	host     = FUNC3("MYSQL_TEST_HOST", "127.0.0.1");	

	FUNC2(log_func, NULL);
#if 0
	/* warm up */
	START_TIMING("%s:%d", "127.0.0.1", 3306);
	test_server("127.0.0.1", 3306);
	STOP_TIMING("warm-up %s", "done");
#endif
	for (rounds = 0; rounds < 10; rounds++) {
		/* real benchmarks */

		FUNC0("%s:%d", host, 3306);
		FUNC4(host, 3306, user, password, db);
		FUNC1("benchmark %s", "done");
	
		FUNC0("%s:%d", host, 4040);
		FUNC4(host, 4040, user, password, db);
		FUNC1("benchmark %s", "done");
	}

	return 0;
}
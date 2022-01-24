#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_4__ {int v6; int socket_count; int* socket_list; } ;
typedef  TYPE_1__ SocketInfo ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  second_thread ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(bool v6, int socket_count)
{
	int		error;
	SocketInfo	info;
	int 	socket_list[socket_count];
	pthread_t 	thread;

	info.v6 = v6;
	for (int i = 0; i < socket_count; i++) {
		if (v6) {
			socket_list[i] = FUNC6(SOCK_STREAM);
		} else {
			socket_list[i] = FUNC5(SOCK_STREAM);
		}
	}
	info.socket_count = socket_count;
	info.socket_list = socket_list;
	error = FUNC3(&thread, NULL, second_thread, &info);
	T_QUIET;
	FUNC0(error, "pthread_create");

	/* compete with second thread */
	FUNC1(&info, "main");
	error = FUNC4(thread, NULL);
	T_QUIET;
	FUNC0(error, "pthread_join");

	for (int i = 0; i < socket_count; i++) {
		error =	FUNC2(socket_list[i]);
		T_QUIET;
		FUNC0(error, "close socket %d", socket_list[i]);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct pollfd {int events; scalar_t__ revents; void* fd; } ;
typedef  int select ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_3__ {int /*<<< orphan*/  pgConn; } ;
typedef  scalar_t__ PostgresPollingStatusType ;
typedef  TYPE_1__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EINTR ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ PGRES_POLLING_READING ; 
 scalar_t__ PGRES_POLLING_WRITING ; 
 int POLLERR ; 
 int POLLIN ; 
 int POLLOUT ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ errno ; 
 int FUNC7 (struct pollfd*,int,int) ; 

__attribute__((used)) static bool
FUNC8(MultiConnection *connection,
					  PostgresPollingStatusType pollingStatus)
{
	bool clientConnectionReady = false;
	int pollResult = 0;

	/* we use poll(2) if available, otherwise select(2) */
#ifdef HAVE_POLL
	int fileDescriptorCount = 1;
	int immediateTimeout = 0;
	int pollEventMask = 0;
	struct pollfd pollFileDescriptor;

	if (pollingStatus == PGRES_POLLING_READING)
	{
		pollEventMask = POLLERR | POLLIN;
	}
	else if (pollingStatus == PGRES_POLLING_WRITING)
	{
		pollEventMask = POLLERR | POLLOUT;
	}

	pollFileDescriptor.fd = PQsocket(connection->pgConn);
	pollFileDescriptor.events = pollEventMask;
	pollFileDescriptor.revents = 0;

	pollResult = poll(&pollFileDescriptor, fileDescriptorCount, immediateTimeout);
#else
	fd_set readFileDescriptorSet;
	fd_set writeFileDescriptorSet;
	fd_set exceptionFileDescriptorSet;
	struct timeval immediateTimeout = { 0, 0 };
	int connectionFileDescriptor = FUNC3(connection->pgConn);

	FUNC2(&readFileDescriptorSet);
	FUNC2(&writeFileDescriptorSet);
	FUNC2(&exceptionFileDescriptorSet);

	if (pollingStatus == PGRES_POLLING_READING)
	{
		FUNC1(connectionFileDescriptor, &exceptionFileDescriptorSet);
		FUNC1(connectionFileDescriptor, &readFileDescriptorSet);
	}
	else if (pollingStatus == PGRES_POLLING_WRITING)
	{
		FUNC1(connectionFileDescriptor, &exceptionFileDescriptorSet);
		FUNC1(connectionFileDescriptor, &writeFileDescriptorSet);
	}

	pollResult = (select) (connectionFileDescriptor + 1, &readFileDescriptorSet,
						   &writeFileDescriptorSet, &exceptionFileDescriptorSet,
						   &immediateTimeout);
#endif /* HAVE_POLL */

	if (pollResult > 0)
	{
		clientConnectionReady = true;
	}
	else if (pollResult == 0)
	{
		clientConnectionReady = false;
	}
	else if (pollResult < 0)
	{
		if (errno == EINTR)
		{
			/*
			 * If a signal was caught, we return false so the caller polls the
			 * connection again.
			 */
			clientConnectionReady = false;
		}
		else
		{
			/*
			 * poll() can set errno to EFAULT (when socket is not
			 * contained in the calling program's address space), EBADF (invalid
			 * file descriptor), EINVAL (invalid arguments to select or poll),
			 * and ENOMEM (no space to allocate file descriptor tables). Out of
			 * these, only ENOMEM is likely here, and it is a fatal error, so we
			 * error out.
			 */
			FUNC0(errno == ENOMEM);
			FUNC4(ERROR, (FUNC5(),
							FUNC6("select()/poll() failed: %m")));
		}
	}

	return clientConnectionReady;
}
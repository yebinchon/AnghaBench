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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_2__ {char* hostname; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CitusNoticeLogLevel ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(void *arg, const char *message)
{
	MultiConnection *connection = (MultiConnection *) arg;
	char *nodeName = connection->hostname;
	uint32 nodePort = connection->port;
	char *trimmedMessage = FUNC1(message);
	char *level = FUNC5((char *) message, ":");

	FUNC2(CitusNoticeLogLevel,
			(FUNC4("%s", FUNC0(trimmedMessage)),
			 FUNC3("%s from %s:%d", level, nodeName, nodePort)));
}
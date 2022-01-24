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
struct sockaddr_un {scalar_t__ sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  serverAddr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,short) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(char *ip, short port) {
  int                sockFd = 0;
  struct sockaddr_un serverAddr;
  int                ret;
  char               name[128];
  FUNC4(name, "%s.%d", ip, port);

  sockFd = FUNC3(AF_UNIX, SOCK_STREAM, 0);

  if (sockFd < 0) {
    FUNC2("failed to open the UD socket:%s, reason:%s", name, FUNC6(errno));
    return -1;
  }

  FUNC1((char *)&serverAddr, 0, sizeof(serverAddr));
  serverAddr.sun_family = AF_UNIX;
  FUNC5(serverAddr.sun_path + 1, name);

  ret = FUNC0(sockFd, (struct sockaddr *)&serverAddr, sizeof(serverAddr));

  if (ret != 0) {
    FUNC2("failed to connect UD socket, name:%d, reason: %s", name, FUNC6(errno));
    sockFd = -1;
  }

  return sockFd;
}
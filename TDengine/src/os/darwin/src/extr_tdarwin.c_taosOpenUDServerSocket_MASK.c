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
typedef  int /*<<< orphan*/  serverAdd ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,short) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11(char *ip, short port) {
  struct sockaddr_un serverAdd;
  int                sockFd;
  char               name[128];

  FUNC4("open ud socket:%s", name);
  // if (tsAllowLocalhost) ip = "0.0.0.0";
  FUNC6(name, "%s.%d", ip, port);

  FUNC1((char *)&serverAdd, sizeof(serverAdd));
  serverAdd.sun_family = AF_UNIX;
  FUNC7(serverAdd.sun_path + 1, name);
  FUNC10(name);

  if ((sockFd = FUNC5(AF_UNIX, SOCK_STREAM, 0)) < 0) {
    FUNC3("failed to open UD socket:%s, reason:%s", name, FUNC8(errno));
    return -1;
  }

  /* bind socket to server address */
  if (FUNC0(sockFd, (struct sockaddr *)&serverAdd, sizeof(serverAdd)) < 0) {
    FUNC3("bind socket:%s failed, reason:%s", name, FUNC8(errno));
    FUNC9(sockFd);
    return -1;
  }

  if (FUNC2(sockFd, 10) < 0) {
    FUNC3("listen socket:%s failed, reason:%s", name, FUNC8(errno));
    return -1;
  }

  return sockFd;
}
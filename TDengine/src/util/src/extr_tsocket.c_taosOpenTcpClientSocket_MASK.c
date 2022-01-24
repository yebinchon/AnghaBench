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
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  serverAddr ;
typedef  int /*<<< orphan*/  clientAddr ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,short) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11(char *destIp, short destPort, char *clientIp) {
  int                sockFd = 0;
  struct sockaddr_in serverAddr, clientAddr;
  int                ret;

  FUNC7("open tcp client socket:%s:%d", destIp, destPort);
  // if (tsAllowLocalhost) destIp = "0.0.0.0";

  sockFd = (int)FUNC8(PF_INET, SOCK_STREAM, IPPROTO_TCP);

  if (sockFd < 0) {
    FUNC6("failed to open the socket: %d (%s)", errno, FUNC9(errno));
    return -1;
  }

  if (clientIp && clientIp[0] && clientIp[0] != '0') {
    FUNC5((char *)&clientAddr, 0, sizeof(clientAddr));
    clientAddr.sin_family = AF_INET;
    clientAddr.sin_addr.s_addr = FUNC4(clientIp);
    clientAddr.sin_port = 0;

    /* bind socket to client address */
    if (FUNC0(sockFd, (struct sockaddr *)&clientAddr, sizeof(clientAddr)) < 0) {
      FUNC6("bind tcp client socket failed, client(%s:0), dest(%s:%d), reason:%d(%s)",
             clientIp, destIp, destPort, errno, FUNC9(errno));
      FUNC1(sockFd);
      return -1;
    }
  }

  FUNC5((char *)&serverAddr, 0, sizeof(serverAddr));
  serverAddr.sin_family = AF_INET;
  serverAddr.sin_addr.s_addr = FUNC4(destIp);
  serverAddr.sin_port = (uint16_t)FUNC3((uint16_t)destPort);

  ret = FUNC2(sockFd, (struct sockaddr *)&serverAddr, sizeof(serverAddr));

  if (ret != 0) {
    FUNC6("failed to connect socket, ip:%s, port:%d, reason: %s", destIp, destPort, FUNC9(errno));
    FUNC10(sockFd);
    sockFd = -1;
  }

  return sockFd;
}
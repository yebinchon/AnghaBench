#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sa ;
struct TYPE_6__ {int cpuid; int len; } ;
struct TYPE_7__ {unsigned int* regs; TYPE_1__ header; } ;
typedef  TYPE_2__ packet_t ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_CANONNAME ; 
 int /*<<< orphan*/  MSG_WAITALL ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 int FUNC5 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (int,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 char** regnames ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int tmp_size ; 

int FUNC13(int argc, char *argv[])
{
  unsigned int pc_trace[5][4], pc_trace_p[5] = { 0, };
  struct addrinfo *ai, *ais, hints;
  int sock = -1, sock1, sock2;
  struct sockaddr_in6 sa;
  packet_t packet1, packet2;
  int i, ret, cnt, cpuid;
  int check_len_override = 0;
  socklen_t sal;

  if (argv[1] != NULL)
    check_len_override = FUNC1(argv[1]);

  FUNC8(&hints, 0, sizeof(hints));
  hints.ai_flags = AI_CANONNAME;
  hints.ai_family = PF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;

  ret = FUNC5("::", "1234", &hints, &ais);
  if (ret != 0)
    return -1;

  for (ai = ais; ai != NULL; ai = ai->ai_next) {
    sock = FUNC12(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
    if (sock == -1)
      continue;

    ret = FUNC2(sock, ai->ai_addr, ai->ai_addrlen);
    if (ret != 0) {
      FUNC3(sock);
      sock = -1;
      continue;
    }
    break;
  }
  FUNC4(ais);

  if (sock == -1) {
    FUNC9("failed to bind");
    return -1;
  }
 
  ret = FUNC6(sock, SOMAXCONN);
  if (ret != 0) {
    FUNC9("failed to listen");
    return -1;
  }

  sal = sizeof(sa);
  sock1 = FUNC0(sock, (struct sockaddr *)&sa, &sal);
  if (sock1 == -1) {
    FUNC9("failed to accept");
    return -1;
  }
  FUNC10("client1 connected\n");

  sal = sizeof(sa);
  sock2 = FUNC0(sock, (struct sockaddr *)&sa, &sal);
  if (sock2 == -1) {
    FUNC9("failed to accept");
    return -1;
  }
  FUNC10("client2 connected\n");

  for (cnt = 0; ; cnt++)
  {
    int len;
#define tmp_size (4+4 + 24*4 + 2*4)
    ret = FUNC11(sock1, &packet1, tmp_size, MSG_WAITALL);
    if (ret != tmp_size) {
      if (ret < 0)
        FUNC9("recv1");
      else
        FUNC10("recv1 %d\n", ret);
      return -1;
    }
    ret = FUNC11(sock2, &packet2, tmp_size, MSG_WAITALL);
    if (ret != tmp_size) {
      if (ret < 0)
        FUNC9("recv2");
      else
        FUNC10("recv2 %d\n", ret);
      return -1;
    }

    cpuid = packet1.header.cpuid;
    len = sizeof(packet1.header) + packet1.header.len;
    if (check_len_override > 0)
      len = check_len_override;

    if (FUNC7(&packet1, &packet2, len) == 0) {
      pc_trace[cpuid][pc_trace_p[cpuid]++ & 3] = packet1.regs[0];
      continue;
    }

    if (packet1.header.cpuid != packet2.header.cpuid)
      FUNC10("%d: CPU %d %d\n", cnt, packet1.header.cpuid & 0xff, packet2.header.cpuid & 0xff);
    else if (*(int *)&packet1.header != *(int *)&packet2.header)
      FUNC10("%d: header\n", cnt);

    // check regs (and stuff)
    for (i = 0; i < 1+24+2; i++)
      if (packet1.regs[i] != packet2.regs[i])
        FUNC10("%d: %3s: %08x %08x\n", cnt, regnames[i], packet1.regs[i], packet2.regs[i]);

    break;
  }

  FUNC10("--\nCPU %d\n", cpuid);
  for (cpuid = 0; cpuid < 2; cpuid++) {
    FUNC10("trace%d: ", cpuid);
    for (i = 0; i < 4; i++)
      FUNC10(" %08x", pc_trace[cpuid][pc_trace_p[cpuid]++ & 3]);

    if (packet1.header.cpuid == cpuid)
      FUNC10(" %08x", packet1.regs[0]);
    else if (packet2.header.cpuid == cpuid)
      FUNC10(" %08x", packet2.regs[0]);
    FUNC10("\n");
  }

  for (i = 0; i < 24+1; i++)
    FUNC10("%3s: %08x %08x\n", regnames[i], packet1.regs[i], packet2.regs[i]);

  return 0;
}
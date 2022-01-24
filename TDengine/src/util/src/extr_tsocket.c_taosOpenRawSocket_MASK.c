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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  rawAdd ;
typedef  int /*<<< orphan*/  hold ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  IP_HDRINCL ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

int FUNC9(char *ip) {
  int                fd, hold;
  struct sockaddr_in rawAdd;

  FUNC5("open udp raw socket:%s", ip);
  // if (tsAllowLocalhost) ip = "0.0.0.0";

  fd = (int)FUNC6(AF_INET, SOCK_RAW, IPPROTO_UDP);
  if (fd < 0) {
    FUNC4("failed to open raw socket: %d (%s)", errno, FUNC7(errno));
    return -1;
  }

  hold = 1;
  if (FUNC8(fd, IPPROTO_IP, IP_HDRINCL, (void *)&hold, sizeof(hold)) < 0) {
    FUNC4("failed to set hold option: %d (%s)", errno, FUNC7(errno));
    FUNC2(fd);
    return -1;
  }

  FUNC1((char *)&rawAdd, sizeof(rawAdd));
  rawAdd.sin_family = AF_INET;
  rawAdd.sin_addr.s_addr = FUNC3(ip);

  if (FUNC0(fd, (struct sockaddr *)&rawAdd, sizeof(rawAdd)) < 0) {
    FUNC4("failed to bind RAW socket: %d (%s)", errno, FUNC7(errno));
    FUNC2(fd);
    return -1;
  }

  return fd;
}
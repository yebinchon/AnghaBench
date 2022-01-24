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
struct perclient {int /*<<< orphan*/  fromremote; int /*<<< orphan*/  clientfd; int /*<<< orphan*/  remotefd; int /*<<< orphan*/  fromclient; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  SEND_TYPE_ARG3 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct perclient *cp, fd_set *fds)
{
  ssize_t nread;
  ssize_t nwrite;
  char buffer[512];
  if(FUNC0(cp->clientfd, fds)) {
    /* read from client, send to remote */
    nread = FUNC1(cp->clientfd, buffer, sizeof(buffer), 0);
    if(nread > 0) {
      nwrite = FUNC2(cp->remotefd, (char *)buffer,
                    (SEND_TYPE_ARG3)nread, 0);
      if(nwrite != nread)
        return 1;
      cp->fromclient += nwrite;
    }
    else
      return 1;
  }
  if(FUNC0(cp->remotefd, fds)) {
    /* read from remote, send to client */
    nread = FUNC1(cp->remotefd, buffer, sizeof(buffer), 0);
    if(nread > 0) {
      nwrite = FUNC2(cp->clientfd, (char *)buffer,
                    (SEND_TYPE_ARG3)nread, 0);
      if(nwrite != nread)
        return 1;
      cp->fromremote += nwrite;
    }
    else
      return 1;
  }
  return 0;
}
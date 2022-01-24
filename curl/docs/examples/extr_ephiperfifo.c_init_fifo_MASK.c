#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mode; } ;
struct TYPE_4__ {int fd; } ;
struct epoll_event {TYPE_1__ data; int /*<<< orphan*/  events; } ;
typedef  int curl_socket_t ;
struct TYPE_5__ {int fifofd; int /*<<< orphan*/  epfd; int /*<<< orphan*/  input; } ;
typedef  TYPE_2__ GlobalInfo ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 char* fifo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int FUNC5 (char*,int) ; 
 int FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(GlobalInfo *g)
{
  struct stat st;
  curl_socket_t sockfd;
  struct epoll_event epev;

  FUNC3(MSG_OUT, "Creating named pipe \"%s\"\n", fifo);
  if(FUNC4 (fifo, &st) == 0) {
    if((st.st_mode & S_IFMT) == S_IFREG) {
      errno = EEXIST;
      FUNC7("lstat");
      FUNC1(1);
    }
  }
  FUNC8(fifo);
  if(FUNC5 (fifo, 0600) == -1) {
    FUNC7("mkfifo");
    FUNC1(1);
  }
  sockfd = FUNC6(fifo, O_RDWR | O_NONBLOCK, 0);
  if(sockfd == -1) {
    FUNC7("open");
    FUNC1(1);
  }

  g->fifofd = sockfd;
  g->input = FUNC2(sockfd, "r");

  epev.events = EPOLLIN;
  epev.data.fd = sockfd;
  FUNC0(g->epfd, EPOLL_CTL_ADD, sockfd, &epev);

  FUNC3(MSG_OUT, "Now, pipe some URL's into > %s\n", fifo);
  return 0;
}
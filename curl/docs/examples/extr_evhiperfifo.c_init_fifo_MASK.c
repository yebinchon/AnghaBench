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
struct stat {int st_mode; } ;
typedef  int curl_socket_t ;
struct TYPE_3__ {int /*<<< orphan*/  fifo_event; int /*<<< orphan*/  loop; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ GlobalInfo ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  fifo_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 
 int FUNC6 (char const*,int) ; 
 int FUNC7 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(GlobalInfo *g)
{
  struct stat st;
  static const char *fifo = "hiper.fifo";
  curl_socket_t sockfd;

  FUNC4(MSG_OUT, "Creating named pipe \"%s\"\n", fifo);
  if(FUNC5 (fifo, &st) == 0) {
    if((st.st_mode & S_IFMT) == S_IFREG) {
      errno = EEXIST;
      FUNC8("lstat");
      FUNC2(1);
    }
  }
  FUNC9(fifo);
  if(FUNC6 (fifo, 0600) == -1) {
    FUNC8("mkfifo");
    FUNC2(1);
  }
  sockfd = FUNC7(fifo, O_RDWR | O_NONBLOCK, 0);
  if(sockfd == -1) {
    FUNC8("open");
    FUNC2(1);
  }
  g->input = FUNC3(sockfd, "r");

  FUNC4(MSG_OUT, "Now, pipe some URL's into > %s\n", fifo);
  FUNC0(&g->fifo_event, fifo_cb, sockfd, EV_READ);
  FUNC1(g->loop, &g->fifo_event);
  return (0);
}
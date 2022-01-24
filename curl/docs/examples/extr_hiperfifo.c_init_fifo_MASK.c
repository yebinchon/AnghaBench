#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mode; } ;
typedef  int curl_socket_t ;
struct TYPE_4__ {int /*<<< orphan*/  fifo_event; int /*<<< orphan*/  evbase; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ GlobalInfo ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 char* fifo ; 
 int /*<<< orphan*/  fifo_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int FUNC6 (char*,int) ; 
 int FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(GlobalInfo *g)
{
  struct stat st;
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
  FUNC1(&g->fifo_event, g->evbase, sockfd, EV_READ|EV_PERSIST,
               fifo_cb, g);
  FUNC0(&g->fifo_event, NULL);
  return (0);
}
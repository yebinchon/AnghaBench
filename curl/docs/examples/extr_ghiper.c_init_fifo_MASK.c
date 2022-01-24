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
struct stat {int st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 
 int FUNC3 (char const*,int) ; 
 int FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

int FUNC7(void)
{
  struct stat st;
  const char *fifo = "hiper.fifo";
  int socket;

  if(FUNC2 (fifo, &st) == 0) {
    if((st.st_mode & S_IFMT) == S_IFREG) {
      errno = EEXIST;
      FUNC5("lstat");
      FUNC1(1);
    }
  }

  FUNC6(fifo);
  if(FUNC3 (fifo, 0600) == -1) {
    FUNC5("mkfifo");
    FUNC1(1);
  }

  socket = FUNC4(fifo, O_RDWR | O_NONBLOCK, 0);

  if(socket == -1) {
    FUNC5("open");
    FUNC1(1);
  }
  FUNC0("Now, pipe some URL's into > %s\n", fifo);

  return socket;
}
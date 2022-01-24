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
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QueuedAlready ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dpy ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static qboolean FUNC8(void) {

  FUNC6(dpy != NULL);

  // Flush the display connection
  //  and look to see if events are queued
  FUNC4( dpy );
  if ( FUNC3( dpy, QueuedAlready) )
  {
    return qtrue;
  }

  // More drastic measures are required -- see if X is ready to talk
  {
    static struct timeval zero_time;
    int x11_fd;
    fd_set fdset;

    x11_fd = FUNC0( dpy );
    FUNC2(&fdset);
    FUNC1(x11_fd, &fdset);
    if ( FUNC7(x11_fd+1, &fdset, NULL, NULL, &zero_time) == 1 )
    {
      return(FUNC5(dpy));
    }
  }

  // Oh well, nothing is ready ..
  return qfalse;
}
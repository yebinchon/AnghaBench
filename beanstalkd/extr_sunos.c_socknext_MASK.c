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
typedef  int uint_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct port_event {int portev_events; int /*<<< orphan*/ * portev_user; } ;
typedef  int int64 ;
typedef  int /*<<< orphan*/  Socket ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ ETIME ; 
 int POLLHUP ; 
 int POLLIN ; 
 int POLLOUT ; 
 scalar_t__ errno ; 
 int FUNC0 (int /*<<< orphan*/ ,struct port_event*,int,int*,struct timespec*) ; 
 int /*<<< orphan*/  portfd ; 
 int FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3(Socket **s, int64 timeout)
{
    int r;
    uint_t n = 1;
    struct port_event pe;
    struct timespec ts;

    ts.tv_sec = timeout / 1000000000;
    ts.tv_nsec = timeout % 1000000000;
    r = FUNC0(portfd, &pe, 1, &n, &ts);
    if (r == -1 && errno != ETIME && errno != EINTR) {
        FUNC2("port_getn");
        return -1;
    }

    if (r == 0) {
        *s = pe.portev_user;
        if (pe.portev_events & POLLHUP) {
            return 'h';
        } else if (pe.portev_events & POLLIN) {
            if (FUNC1(*s, 'r') == -1) {
                return -1;
            }
            return 'r';
        } else if (pe.portev_events & POLLOUT) {
            if (FUNC1(*s, 'w') == -1) {
                return -1;
            }
            return 'w';
        }
    }

    return 0;
}
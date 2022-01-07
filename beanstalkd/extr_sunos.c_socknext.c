
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct port_event {int portev_events; int * portev_user; } ;
typedef int int64 ;
typedef int Socket ;


 scalar_t__ EINTR ;
 scalar_t__ ETIME ;
 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 scalar_t__ errno ;
 int port_getn (int ,struct port_event*,int,int*,struct timespec*) ;
 int portfd ;
 int sockwant (int *,char) ;
 int twarn (char*) ;

int
socknext(Socket **s, int64 timeout)
{
    int r;
    uint_t n = 1;
    struct port_event pe;
    struct timespec ts;

    ts.tv_sec = timeout / 1000000000;
    ts.tv_nsec = timeout % 1000000000;
    r = port_getn(portfd, &pe, 1, &n, &ts);
    if (r == -1 && errno != ETIME && errno != EINTR) {
        twarn("port_getn");
        return -1;
    }

    if (r == 0) {
        *s = pe.portev_user;
        if (pe.portev_events & POLLHUP) {
            return 'h';
        } else if (pe.portev_events & POLLIN) {
            if (sockwant(*s, 'r') == -1) {
                return -1;
            }
            return 'r';
        } else if (pe.portev_events & POLLOUT) {
            if (sockwant(*s, 'w') == -1) {
                return -1;
            }
            return 'w';
        }
    }

    return 0;
}

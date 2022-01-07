
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_5__ {scalar_t__ lastsync; scalar_t__ syncrate; TYPE_1__* cur; scalar_t__ wantsync; } ;
typedef TYPE_2__ Wal ;
struct TYPE_4__ {int fd; } ;


 int fsync (int ) ;
 scalar_t__ nanoseconds () ;
 int twarn (char*) ;

__attribute__((used)) static void
walsync(Wal *w)
{
    int64 now;

    now = nanoseconds();
    if (w->wantsync && now >= w->lastsync+w->syncrate) {
        w->lastsync = now;
        if (fsync(w->cur->fd) == -1) {
            twarn("fsync");
        }
    }
}

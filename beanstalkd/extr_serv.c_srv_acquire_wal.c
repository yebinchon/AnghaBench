
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int dir; scalar_t__ use; } ;
struct TYPE_10__ {struct TYPE_10__* next; struct TYPE_10__* prev; } ;
struct TYPE_9__ {TYPE_3__ wal; } ;
typedef TYPE_1__ Server ;
typedef TYPE_2__ Job ;


 int exit (int) ;
 int prot_replay (TYPE_1__*,TYPE_2__*) ;
 int twarnx (char*,...) ;
 int waldirlock (TYPE_3__*) ;
 int walinit (TYPE_3__*,TYPE_2__*) ;

void srv_acquire_wal(Server *s) {
    if (s->wal.use) {



        if (!waldirlock(&s->wal)) {
            twarnx("failed to lock wal dir %s", s->wal.dir);
            exit(10);
        }

        Job list = {.prev=((void*)0), .next=((void*)0)};
        list.prev = list.next = &list;
        walinit(&s->wal, &list);
        int ok = prot_replay(s, &list);
        if (!ok) {
            twarnx("failed to replay log");
            exit(1);
        }
    }
}

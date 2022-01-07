
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* cur; } ;
typedef TYPE_1__ Wal ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ File ;


 int filewclose (TYPE_2__*) ;
 int twarnx (char*) ;

__attribute__((used)) static int
usenext(Wal *w)
{
    File *f;

    f = w->cur;
    if (!f->next) {
        twarnx("there is no next wal file");
        return 0;
    }

    w->cur = f->next;
    filewclose(f);
    return 1;
}

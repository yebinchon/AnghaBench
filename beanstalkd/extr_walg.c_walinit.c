
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tail; int cur; } ;
typedef TYPE_1__ Wal ;
typedef int Job ;


 int exit (int) ;
 int makenextfile (TYPE_1__*) ;
 int twarnx (char*) ;
 int walread (TYPE_1__*,int *,int) ;
 int walscandir (TYPE_1__*) ;

void
walinit(Wal *w, Job *list)
{
    int min;

    min = walscandir(w);
    walread(w, list, min);


    if (!makenextfile(w)) {
        twarnx("makenextfile");
        exit(1);
    }

    w->cur = w->tail;
}

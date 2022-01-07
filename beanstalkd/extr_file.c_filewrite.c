
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int resv; TYPE_1__* w; int fd; } ;
struct TYPE_7__ {int walresv; int walused; } ;
struct TYPE_6__ {int resv; int alive; } ;
typedef TYPE_2__ Job ;
typedef TYPE_3__ File ;


 int twarn (char*) ;
 int write (int ,void*,int) ;

__attribute__((used)) static int
filewrite(File *f, Job *j, void *buf, int len)
{
    int r;

    r = write(f->fd, buf, len);
    if (r != len) {
        twarn("write");
        return 0;
    }

    f->w->resv -= r;
    f->resv -= r;
    j->walresv -= r;
    j->walused += r;
    f->w->alive += r;
    return 1;
}

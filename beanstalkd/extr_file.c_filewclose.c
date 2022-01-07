
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ iswopen; int fd; scalar_t__ free; TYPE_1__* w; } ;
struct TYPE_5__ {scalar_t__ filesize; } ;
typedef TYPE_2__ File ;


 int close (int ) ;
 scalar_t__ errno ;
 int filedecref (TYPE_2__*) ;
 scalar_t__ ftruncate (int ,scalar_t__) ;
 int twarn (char*) ;

void
filewclose(File *f)
{
    if (!f) return;
    if (!f->iswopen) return;
    if (f->free) {
        errno = 0;
        if (ftruncate(f->fd, f->w->filesize - f->free) != 0) {
            twarn("ftruncate");
        }
    }
    if (close(f->fd) == -1)
        twarn("close");
    f->iswopen = 0;
    filedecref(f);
}

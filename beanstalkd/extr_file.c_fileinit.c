
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dir; } ;
typedef TYPE_1__ Wal ;
struct TYPE_6__ {int seq; int path; TYPE_1__* w; } ;
typedef TYPE_2__ File ;


 int fmtalloc (char*,int ,int) ;

int
fileinit(File *f, Wal *w, int n)
{
    f->w = w;
    f->seq = n;
    f->path = fmtalloc("%s/binlog.%d", w->dir, n);
    return !!f->path;
}

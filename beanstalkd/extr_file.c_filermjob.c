
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* w; } ;
struct TYPE_12__ {scalar_t__ walused; TYPE_5__* file; TYPE_2__* fprev; TYPE_3__* fnext; } ;
struct TYPE_11__ {TYPE_2__* fprev; } ;
struct TYPE_10__ {TYPE_3__* fnext; } ;
struct TYPE_9__ {int alive; } ;
typedef TYPE_4__ Job ;
typedef TYPE_5__ File ;


 int filedecref (TYPE_5__*) ;

void
filermjob(File *f, Job *j)
{
    if (!f) return;
    if (f != j->file) return;
    j->fnext->fprev = j->fprev;
    j->fprev->fnext = j->fnext;
    j->fnext = 0;
    j->fprev = 0;
    j->file = ((void*)0);
    f->w->alive -= j->walused;
    j->walused = 0;
    filedecref(f);
}

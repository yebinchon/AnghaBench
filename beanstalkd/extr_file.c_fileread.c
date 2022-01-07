
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int v ;
struct TYPE_8__ {int path; } ;
typedef int Job ;
typedef TYPE_1__ File ;




 int filedecref (TYPE_1__*) ;
 int fileincref (TYPE_1__*) ;
 int readfull (TYPE_1__*,int*,int,int*,char*) ;
 int readrec (TYPE_1__*,int *,int*) ;
 int readrec5 (TYPE_1__*,int *,int*) ;
 int warnx (char*,int ,int) ;

int
fileread(File *f, Job *list)
{
    int err = 0, v;

    if (!readfull(f, &v, sizeof(v), &err, "version")) {
        return err;
    }
    switch (v) {
    case 129:
        fileincref(f);
        while (readrec(f, list, &err));
        filedecref(f);
        return err;
    case 128:
        fileincref(f);
        while (readrec5(f, list, &err));
        filedecref(f);
        return err;
    }

    warnx("%s: unknown version: %d", f->path, v);
    return 1;
}

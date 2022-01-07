
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mtime; } ;
struct TYPE_4__ {char* name; int line; int column; int mtime; int * file; } ;
typedef TYPE_1__ File ;
typedef int FILE ;


 TYPE_1__* calloc (int,int) ;
 int errno ;
 int error (char*,int ) ;
 int fileno (int *) ;
 int fstat (int ,struct stat*) ;
 int strerror (int ) ;

File *make_file(FILE *file, char *name) {
    File *r = calloc(1, sizeof(File));
    r->file = file;
    r->name = name;
    r->line = 1;
    r->column = 1;
    struct stat st;
    if (fstat(fileno(file), &st) == -1)
        error("fstat failed: %s", strerror(errno));
    r->mtime = st.st_mtime;
    return r;
}

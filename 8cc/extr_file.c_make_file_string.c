
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int line; int column; char* p; } ;
typedef TYPE_1__ File ;


 TYPE_1__* calloc (int,int) ;

File *make_file_string(char *s) {
    File *r = calloc(1, sizeof(File));
    r->line = 1;
    r->column = 1;
    r->p = s;
    return r;
}

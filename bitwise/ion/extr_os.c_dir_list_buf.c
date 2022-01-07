
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; scalar_t__ valid; } ;
typedef TYPE_1__ DirListIter ;


 int buf_push (char const**,char const*) ;
 int dir_list (TYPE_1__*,char const*) ;
 int dir_list_next (TYPE_1__*) ;
 char* strdup (int ) ;

const char **dir_list_buf(const char *filespec) {
    const char **buf = ((void*)0);
    DirListIter iter;
    for (dir_list(&iter, filespec); iter.valid; dir_list_next(&iter)) {
        const char *name = strdup(iter.name);
        buf_push(buf, name);
    }
    return buf;
}

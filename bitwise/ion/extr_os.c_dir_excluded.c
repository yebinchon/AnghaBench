
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; scalar_t__ valid; } ;
typedef TYPE_1__ DirListIter ;


 scalar_t__ strcmp (int ,char*) ;

bool dir_excluded(DirListIter *iter) {
    return iter->valid && (strcmp(iter->name, ".") == 0 || strcmp(iter->name, "..") == 0);
}

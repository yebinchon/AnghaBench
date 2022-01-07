
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ FlagDef ;


 size_t buf_len (TYPE_1__*) ;
 TYPE_1__* flag_defs ;
 scalar_t__ strcmp (int ,char const*) ;

FlagDef *get_flag_def(const char *name) {
    for (size_t i = 0; i < buf_len(flag_defs); i++) {
        if (strcmp(flag_defs[i].name, name) == 0) {
            return &flag_defs[i];
        }
    }
    return ((void*)0);
}

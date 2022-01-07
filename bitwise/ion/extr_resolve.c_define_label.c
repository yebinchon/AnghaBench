
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int defined; } ;
typedef int SrcPos ;
typedef TYPE_1__ Label ;


 int fatal_error (int ,char*,char const*) ;
 TYPE_1__* get_label (int ,char const*) ;

void define_label(SrcPos pos, const char *name) {
    Label *label = get_label(pos, name);
    if (label->defined) {
        fatal_error(pos, "Multiple definitions of label '%s'", name);
    }
    label->defined = 1;
}

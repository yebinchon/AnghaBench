
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int referenced; } ;
typedef int SrcPos ;
typedef TYPE_1__ Label ;


 TYPE_1__* get_label (int ,char const*) ;

void reference_label(SrcPos pos, const char *name) {
    Label *label = get_label(pos, name);
    label->referenced = 1;
}

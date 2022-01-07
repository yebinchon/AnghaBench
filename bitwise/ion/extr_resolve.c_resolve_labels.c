
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int pos; scalar_t__ referenced; scalar_t__ defined; } ;
typedef TYPE_1__ Label ;


 int fatal_error (int ,char*,int ) ;
 TYPE_1__* labels ;
 TYPE_1__* labels_end ;
 int warning (int ,char*,int ) ;

void resolve_labels(void) {
    for (Label *label = labels; label != labels_end; label++) {
        if (label->referenced && !label->defined) {
            fatal_error(label->pos, "Label '%s' referenced but not defined", label->name);
        }
        if (label->defined && !label->referenced) {
            warning(label->pos, "Label '%s' defined but not referenced", label->name);
        }
    }
    labels_end = labels;
}

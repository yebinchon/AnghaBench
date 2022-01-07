
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_action {int label; } ;


 int mac_exc_update_action_label (struct exception_action*,int ) ;

int
mac_exc_inherit_action_label(struct exception_action *parent,
        struct exception_action *child) {
 return mac_exc_update_action_label(child, parent->label);
}

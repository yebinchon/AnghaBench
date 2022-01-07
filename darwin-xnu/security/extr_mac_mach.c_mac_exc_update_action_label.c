
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;
struct exception_action {int label; } ;


 int MAC_CHECK (int ,struct exception_action*,int ,struct label*) ;
 int exc_action_label_update ;

int
mac_exc_update_action_label(struct exception_action *action,
       struct label *newlabel) {
 int error;

 MAC_CHECK(exc_action_label_update, action, action->label, newlabel);

 return (error);
}

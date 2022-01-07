
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;
struct exception_action {struct label* label; } ;


 int MAC_PERFORM (int ,struct exception_action*,struct label*) ;
 int exc_action_label_associate ;

void
mac_exc_associate_action_label(struct exception_action *action, struct label *label)
{
 action->label = label;
 MAC_PERFORM(exc_action_label_associate, action, action->label);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_action {int * label; } ;


 int mac_exc_free_label (int *) ;

void
mac_exc_free_action_label(struct exception_action *action)
{
 mac_exc_free_label(action->label);
 action->label = ((void*)0);
}

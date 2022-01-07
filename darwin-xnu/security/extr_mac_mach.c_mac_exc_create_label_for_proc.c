
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct label*,struct proc*) ;
 int exc_action_label_populate ;
 struct label* mac_exc_create_label () ;

struct label *
mac_exc_create_label_for_proc(struct proc *proc)
{
 struct label *label = mac_exc_create_label();
 MAC_PERFORM(exc_action_label_populate, label, proc);
 return label;
}

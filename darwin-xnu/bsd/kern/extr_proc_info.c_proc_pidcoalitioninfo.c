
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_pidcoalitioninfo {int coalition_id; } ;
typedef int proc_t ;


 int bzero (struct proc_pidcoalitioninfo*,int) ;
 int proc_coalitionids (int ,int ) ;

void
proc_pidcoalitioninfo(proc_t p, struct proc_pidcoalitioninfo *ppci)
{
 bzero(ppci, sizeof(*ppci));
 proc_coalitionids(p, ppci->coalition_id);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Task ;
typedef int List ;


 scalar_t__ TaskListMember (int *,int *) ;
 int * lappend (int *,int *) ;

List *
TaskListAppendUnique(List *list, Task *task)
{
 if (TaskListMember(list, task))
 {
  return list;
 }

 return lappend(list, task);
}

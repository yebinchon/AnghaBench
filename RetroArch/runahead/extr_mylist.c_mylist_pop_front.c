
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MyList ;


 int mylist_remove_at (int *,int ) ;

void mylist_pop_front(MyList *list)
{
   mylist_remove_at(list, 0);
}

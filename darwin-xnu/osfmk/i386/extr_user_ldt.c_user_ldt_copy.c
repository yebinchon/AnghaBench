
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* user_ldt_t ;
struct user_ldt {int dummy; } ;
struct real_descriptor {int dummy; } ;
struct TYPE_6__ {int count; } ;


 int bcopy (TYPE_1__*,TYPE_1__*,size_t) ;
 int kalloc (size_t) ;

user_ldt_t
user_ldt_copy(
 user_ldt_t user_ldt)
{
 if (user_ldt != ((void*)0)) {
     size_t size = sizeof(struct user_ldt) + (user_ldt->count * sizeof(struct real_descriptor));
     user_ldt_t new_ldt = (user_ldt_t)kalloc(size);
     if (new_ldt != ((void*)0))
  bcopy(user_ldt, new_ldt, size);
     return new_ldt;
 }

 return 0;
}

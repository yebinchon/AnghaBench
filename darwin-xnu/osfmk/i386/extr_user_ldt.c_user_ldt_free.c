
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* user_ldt_t ;
struct user_ldt {int dummy; } ;
struct real_descriptor {int dummy; } ;
struct TYPE_4__ {int count; } ;


 int kfree (TYPE_1__*,int) ;

void
user_ldt_free(
 user_ldt_t user_ldt)
{
 kfree(user_ldt, sizeof(struct user_ldt) + (user_ldt->count * sizeof(struct real_descriptor)));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int btlog_lock; } ;
typedef TYPE_1__ btlog_t ;


 int simple_unlock (int *) ;

__attribute__((used)) static void
btlog_unlock(btlog_t *btlog)
{
 simple_unlock(&btlog->btlog_lock);
}

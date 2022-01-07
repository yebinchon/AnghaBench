
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* getc ) (int ,int ,int ,int ) ;} ;


 int FALSE ;
 TYPE_1__* cons_ops ;
 size_t cons_ops_index ;
 int stub1 (int ,int ,int ,int ) ;

int
cnmaygetc(void)
{
 return cons_ops[cons_ops_index].getc(0, 0, FALSE, FALSE);
}

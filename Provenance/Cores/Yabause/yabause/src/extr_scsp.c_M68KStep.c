
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Exec ) (int) ;} ;


 TYPE_1__* M68K ;
 int stub1 (int) ;

void
M68KStep (void)
{
  M68K->Exec(1);
}

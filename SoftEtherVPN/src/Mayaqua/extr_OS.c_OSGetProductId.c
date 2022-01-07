
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* GetProductId ) () ;} ;


 TYPE_1__* os ;
 char* stub1 () ;

char* OSGetProductId()
{
 return os->GetProductId();
}

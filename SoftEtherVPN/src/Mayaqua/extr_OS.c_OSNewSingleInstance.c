
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* NewSingleInstance ) (char*) ;} ;


 TYPE_1__* os ;
 void* stub1 (char*) ;

void *OSNewSingleInstance(char *instance_name)
{
 return os->NewSingleInstance(instance_name);
}

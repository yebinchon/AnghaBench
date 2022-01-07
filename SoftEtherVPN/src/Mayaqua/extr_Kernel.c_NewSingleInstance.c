
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INSTANCE ;


 int * NewSingleInstanceEx (char*,int) ;

INSTANCE *NewSingleInstance(char *instance_name)
{
 return NewSingleInstanceEx(instance_name, 0);
}

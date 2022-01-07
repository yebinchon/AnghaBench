
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;
typedef int boolean_t ;


 int major (int ) ;
 int minor (int ) ;

boolean_t iskmemdev(dev_t dev)
{
 return (major(dev) == 3 && minor(dev) < 2);
}

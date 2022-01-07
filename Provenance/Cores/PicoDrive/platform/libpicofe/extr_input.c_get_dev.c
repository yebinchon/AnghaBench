
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_dev_t ;


 int IN_MAX_DEVS ;
 int * in_devices ;

__attribute__((used)) static in_dev_t *get_dev(int dev_id)
{
 if (dev_id < 0 || dev_id >= IN_MAX_DEVS)
  return ((void*)0);

 return &in_devices[dev_id];
}

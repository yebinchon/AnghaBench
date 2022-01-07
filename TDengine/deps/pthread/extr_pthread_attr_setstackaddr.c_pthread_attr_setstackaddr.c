
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_4__ {void* stackaddr; } ;


 int EINVAL ;
 int ENOSYS ;
 scalar_t__ ptw32_is_attr (TYPE_1__**) ;

int
pthread_attr_setstackaddr (pthread_attr_t * attr, void *stackaddr)
{
  return ENOSYS;


}

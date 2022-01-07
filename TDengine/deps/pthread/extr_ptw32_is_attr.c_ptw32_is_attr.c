
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {scalar_t__ valid; } ;


 scalar_t__ PTW32_ATTR_VALID ;

int
ptw32_is_attr (const pthread_attr_t * attr)
{


  return (attr == ((void*)0) ||
   *attr == ((void*)0) || (*attr)->valid != PTW32_ATTR_VALID);
}

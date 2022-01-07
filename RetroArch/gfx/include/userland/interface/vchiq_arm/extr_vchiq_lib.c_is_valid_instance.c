
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_4__ {scalar_t__ initialised; } ;


 TYPE_1__ vchiq_instance ;

__attribute__((used)) static __inline int
is_valid_instance(VCHIQ_INSTANCE_T instance)
{
   return (instance == &vchiq_instance) && (instance->initialised > 0);
}

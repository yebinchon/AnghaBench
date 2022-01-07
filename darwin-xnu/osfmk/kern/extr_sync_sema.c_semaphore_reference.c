
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* semaphore_t ;
struct TYPE_3__ {int ref_count; } ;


 int os_ref_retain (int *) ;

void
semaphore_reference(
 semaphore_t semaphore)
{
 os_ref_retain(&semaphore->ref_count);
}

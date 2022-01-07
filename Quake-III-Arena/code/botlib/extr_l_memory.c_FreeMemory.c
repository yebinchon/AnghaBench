
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* FreeMemory ) (unsigned long*) ;} ;


 unsigned long MEM_ID ;
 TYPE_1__ botimport ;
 int stub1 (unsigned long*) ;

void FreeMemory(void *ptr)
{
 unsigned long int *memid;

 memid = (unsigned long int *) ((char *) ptr - sizeof(unsigned long int));

 if (*memid == MEM_ID)
 {
  botimport.FreeMemory(memid);
 }
}

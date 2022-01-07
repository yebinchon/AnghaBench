
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int alloc_size; int alloc_address; } ;
typedef TYPE_1__ mch2_vars_t ;


 int MEMOP_ALLOC ;
 int MEMPERM_READ ;
 int MEMPERM_WRITE ;
 int svcControlMemory (int *,int ,int,int ,int ,int) ;
 int svcExitThread () ;

__attribute__((used)) static void alloc_thread_entry(mch2_vars_t* mch2)
{
   u32 tmp;

   svcControlMemory(&tmp, mch2->alloc_address, 0x0, mch2->alloc_size, MEMOP_ALLOC, MEMPERM_READ | MEMPERM_WRITE);
   svcExitThread();
}

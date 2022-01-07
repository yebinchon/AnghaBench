
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int mprotect (void*,size_t,int) ;

int memprotect(void *addr, size_t len)
{
   return mprotect(addr, len, PROT_READ | PROT_WRITE | PROT_EXEC);
}

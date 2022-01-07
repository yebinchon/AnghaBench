
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static boolean_t memory_iszero(void *addr, size_t size)
{
 char *data = (char *)addr;
 for (size_t i = 0; i < size; i++){
  if (data[i] != 0)
   return FALSE;
 }
 return TRUE;
}

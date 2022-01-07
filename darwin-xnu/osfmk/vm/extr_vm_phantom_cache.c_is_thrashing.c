
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static boolean_t
is_thrashing(uint32_t added, uint32_t found, uint32_t threshold)
{

 if (added < threshold || found < threshold)
  return FALSE;
 if (found < added / 2)
  return FALSE;

 return TRUE;
}

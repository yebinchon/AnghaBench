
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_osResult ;


 int pteTlsFree (unsigned int) ;

pte_osResult pte_osTlsFree(unsigned int index)
{
   return pteTlsFree(index);
}

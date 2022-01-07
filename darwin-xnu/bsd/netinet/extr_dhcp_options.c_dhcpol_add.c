
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrlist_t ;
typedef int dhcpol_t ;
typedef int boolean_t ;


 int ptrlist_add (int *,void const*) ;

boolean_t
dhcpol_add(dhcpol_t * list, const void * element)
{
    return (ptrlist_add((ptrlist_t *)list, element));
}
